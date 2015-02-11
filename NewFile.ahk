NewFile(mainfile,newfile,MsgBox:=""){
	SplitPath,mainfile,mfn,moutdir
	SplitPath,newfile,nfn,noutdir
	if(moutdir!=noutdir){
		newfile:=SubStr(newfile,1,2)=".."?moutdir "\" newfile:newfile
		main:=StrSplit(moutdir,"\"),build:="",new:=StrSplit(noutdir,"\")
		if(InStr(newfile,A_AppData)||InStr(newfile,A_AppDataCommon)){
			dir:=InStr(newfile,A_AppData)?"%A_AppData%":InStr(newfile,A_AppDataCommon)?"%A_AppDataCommon%":"",nf:=newfile
			SplitPath,newfile,fn
			for a,b in [A_AppData,A_AppDataCommon,fn]
				StringReplace,nf,nf,%b%
			add:=Trim(nf,"\")?"\" Trim(nf,"\"):"",split:=dir add,build:=dir
		}else if(InStr(newfile,"..")){
			for a,b in new,build:=[]{
				if(b=".."),check:=""{
					for c,d in build
						check.=d "\"
					if(FileExist(Trim(check,"\"))="D")
						addfirst.="..\"
					startbuild:=1
				}_:=b=".."?build.Remove(build.MaxIndex()):build.Insert(b)
				if((addfirst||startbuild)&&b!="..")
					bb.=b "\"
			}
			build:=bb
		}else{
			for a,b in new
				if(b!=main[a])
					build.=b "\"
		}
		addfirst:=Trim(addfirst,"\"),top:=files.ssn("//main[@file='" mainfile "']").firstchild,build:=build?build:addfirst,build:=Trim(build,"\")
		for index,dirname in StrSplit(build,"\"){
			folderlist.=dirname "\"
			if (addfirst)
				dirname:=(dirname!="..")?addfirst "\" dirname:dirname,addfirst:=""
			if !folder:=ssn(top,"folder[@folder='" folderlist "']")
				folder:=files.under({under:top,node:"folder",att:{folder:folderlist,tv:TV_Add(dirname,ssn(top,"@tv").text,"First Sort")}})
			top:=folder
		}
		child:=TV_Add(nfn,ssn(top,"@tv").text,"Sort")
	}else
		top:=files.ssn("//main[@file='" mainfile "']"),child:=TV_Add(nfn,ssn(top.firstchild,"@tv").text,"Sort")
	return {obj:top,tv:child}
}