open(filelist="",show=""){
	static root,top
	if !filelist{
		FileSelectFile,filename,,% ProjectFolder(),,*.ahk
		if ErrorLevel
			return
		if ff:=files.ssn("//main[@file='" filename "']"){
			Gui,1:Default
			tv:=ssn(ff.firstchild,"@tv").text
			TV_Modify(tv,"Select Vis Focus")
			return
		}
		fff:=FileOpen(filename,"RW")
		file1:=file:=fff.read(fff.length)
		gosub,addfile
		Gui,1:TreeView,SysTreeView321
		TV_Modify(root,"Select Vis Focus")
		filelist:=files.sn("//main[@file='" filename "']/descendant::file")
		while,filename:=filelist.item[A_Index-1]
			code_explorer.scan(filename)
		code_explorer.Refresh_Code_Explorer()
	}else{
		WinSetTitle,% hwnd([1]),,AHK Studio - Scanning files....
		for a,b in StrSplit(filelist,"`n"){
			if files.ssn("//main[@file='" b "']")
				continue
			fff:=FileOpen(b,"RW")
			file1:=file:=fff.read(fff.length)
			filename:=b
			gosub,addfile
			v.filescan.Insert(filename)
			if (show=1){
				tv(root)
				SetTimer,scanfiles,0
			}
		}
		return
		scanfiles:
		if !v.filescan.1{
			SetTimer,scanfiles,Off
			WinSetTitle,% hwnd([1]),,% "AHK Studio - " current(3).file
			code_explorer.Refresh_Code_Explorer()
			return
		}
		filename:=v.filescan.1
		filelist:=files.sn("//main[@file='" filename "']/descendant::file")
		while,fn:=filelist.item[A_Index-1]
			code_explorer.scan(fn)
		v.filescan.Remove(1)
		return
	}
	return root
	addfile:
	Gui,1:Default
	SplitPath,filename,fn,dir
	top:=files.add({path:"main",att:{file:filename},dup:1})
	list:=[{file:filename,parent:""}]
	while,list:=extract(list,top){
	}
	update({file:filename,text:Trim(file,"`r`n"),load:1})
	ff:=files.sn("//file")
	if !settings.ssn("//open/file[text()='" filename "']")
		settings.add({path:"open/file",text:filename,dup:1})
	Gui,1:Default
	TV_Modify(TV_GetChild(0),"Select Focus Vis")
	return
}
extract(list,top){
	filelist:=[]
	for index,obj in list{
		filename:=obj.file
		if !FileExist(filename)
			Continue
		SplitPath,filename,fn,dir
		backupdir:=dir
		ffff:=FileOpen(filename,"RW"),encoding:=ffff.pos=3?"UTF-8":ffff.pos=2?"UTF-16":"CP0",text:=ffff.read(ffff.length)
		if !next:=ssn(top,"descendant::file[@file='" obj.parent "']")
			next:=files.under({under:top,node:"file",att:{file:filename,tv:TV_Add(fn,0,"Sort"),filename:fn,skip:skip,encoding:encoding}})
		else{
			cfile:=obj.file,pfile:=obj.parent
			SplitPath,cfile,,cdir
			SplitPath,pfile,,pdir
			if(cdir!=pdir){
				build:=""
				for a,b in {"%A_AppData%":A_AppData,"%A_AppDataCommon%":A_AppDataCommon}
					if(InStr(cfile,b))
						StringReplace,build,cfile,%b%,%a%,All
				build:=build?build:RelativePath(pfile,cfile)
				folderlist:=""
				SplitPath,build,cfname,build
				for e,f in StrSplit(build,"\"){
					folderlist.=f "\"
					if !folder:=ssn(top,"descendant::folder[@folder='" folderlist "']")
						next:=files.under({under:next,node:"folder",att:{folder:folderlist,tv:TV_Add(f,ssn(next,"@tv").text,"First Sort")}})
				}
				next:=folder.xml?folder:next
				files.under({under:next,node:"file",att:{file:filename,tv:TV_Add(cfname,ssn(next,"@tv").text,"First Sort"),filename:fn,skip:skip,encoding:encoding,include:obj.include}})
			}else
				files.under({under:next,node:"file",att:{file:filename,tv:tv_add(fn,ssn(next,"@tv").text,"sort"),filename:fn,skip:skip,encoding:encoding,include:obj.include}})
		}
		StringReplace,text,text,`r`n,`n,All
		StringReplace,text,text,`r,`n,All
		update({file:filename,text:text,load:1})
		for a,b in StrSplit(text,"`n","`r"){
			original:=b
			if regexmatch(b,"iO)^\s*#(include|includeagain) (.*)",name){
				skip:=InStr(b,";*")?1:0
				if skip
					Continue
				b:=Trim(RegExReplace(RegExReplace(RegExReplace(name.2,"\/","\"),"\*i "),"(\;.*)"))
				for find,replace in {"%A_LineFile%":filename,"%A_ScriptDir%":backupdir,"%A_AppData%":A_AppData,"%A_AppDataCommon%":A_AppDataCommon}
					if InStr(b,find)
						StringReplace,b,b,%find%,%replace%,All
				SplitPath,b,file,outdir
				newfile:=RegExReplace(outdir,"(\.|\\)")?b:dir "\" b
				if(FileExist(newfile)="D"){
					dir:=newfile
					files.under({under:top,node:"remove",att:{inc:original}})
					Continue
				}
				if !FileExist(newfile)
					newfile:=dir "\" newfile
				if !FileExist(newfile)
					Continue
				Loop,%newfile%
					newfilename:=A_LoopFileLongPath
				if !ssn(top,"descendant-or-self::file[@file='" newfilename "']")
					filelist.Insert({file:newfilename,parent:filename,include:original})
			}
		}
	}
	if filelist.MinIndex()
		return filelist
}