class code_explorer{
	static explore:=[],TreeView:=[],sort:=[],function:="Om`n)^\s*((\w|[^\x00-\x7F])+)\((.*)?\)[\s+;.*\s+]?[\s*]?{",label:="Om`n)^\s*((\w|[^\x00-\x7F])+):[\s+;]",class:="Om`ni)^[\s*]?(class[\s*](\w|[^\x00-\x7F])+)",functions:=[],bookmarks:=[],variables:=[],varlist:=[]
	scan(node){
		explore:=[],bits:=[],method:=[],filename:=ssn(node,"@file").text,parentfile:=ssn(node,"ancestor::main/@file").text
		if !main:=cexml.ssn("//main[@file='" parentfile "']")
			main:=cexml.Add({path:"main",att:{file:parentfile},dup:1})
		SplitPath,filename,name,folder
		if !(folder)
			SplitPath,parentfile,,folder
		if !cce:=ssn(main,"file[@file='" filename "']")
			cce:=cexml.under({under:main,node:"file",att:{type:"File",parent:parentfile,file:filename,name:name,folder:folder,order:"name,type,folder"}})
		else
			cce.ParentNode.RemoveChild(cce),cce:=cexml.under({under:main,node:"file",att:{type:"File",parent:parentfile,file:filename,name:name,folder:folder,order:"name,type,folder"}})
		for a,b in ["class","file","function","hotkey","label","menu","method","property","variable"]
			explore[b]:=[]
		skip:=ssn(node,"@skip").text?1:0,code:=update({get:filename}),pos:=1
		if pos:=InStr(code,"/*"){
			while,pos:=RegExMatch(code,"UOms`n)^\s*?(\/\*.*\*\/)",found,pos){
				rep:=RegExReplace(found.1,"(:|\(|\))","_")
				StringReplace,code,code,% found.1,%rep%,All
				pos:=found.Pos(1)+StrLen(found.1)
			}
		}
		if !v.options.Disable_Variable_List{
			pos:=1,this.variables[parentfile,filename]:=[]
			while,pos:=RegExMatch(code,"Osm`n)(\w*)(\s*)?:=",var,pos){
				if var.len(1){
					if !ssn(main,"descendant::*[@type='variable'][@text='" var.1 "']")
						cexml.under({under:cce,node:"info",att:{type:"Variable",file:filename,pos:pos-1,text:var.1,root:parentfile,upper:upper(var.1),order:"text,type,file"}})
					pos:=var.Pos(1)+var.len(1)
				}
				else{
					pos:=1
					break
				}
			}
		}
		for type,find in {Hotkey:"Om`n)^\s*([#|!|^|\+|~|\$|&|<|>|*]*?\w+)::",Label:this.label}{
			pos:=1
			while,pos:=RegExMatch(code,find,fun,pos)
				np:=StrPut(SubStr(code,1,fun.Pos(1)),"utf-8")-1-(StrPut(SubStr(fun.1,1,1),"utf-8")-1),cexml.under({under:cce,node:"info",att:{type:type,file:filename,pos:np,text:fun.1,root:parentfile,upper:upper(fun.1),order:"text,type,file"}}),pos:=fun.pos(1)+1
		}
		lastpos:=pos:=1,codeobj:=StrSplit(code,"`n"),pos:=1,objects:=[]
		while,pos:=RegExMatch(code,code_explorer.class,found,pos)
			top:=SubStr(code,1,InStr(code,found.1)),RegExReplace(top,"\n","",count),objects[pos]:={name:found.1,line:count},cexml.under({under:cce,node:"info",att:{type:"Class",file:filename,pos:pos=1?0:pos,text:SubStr(found.1,7),upper:upper(SubStr(found.1,7)),root:parentfile,order:"text,type,root"}}),pos:=found.Pos(1)+StrLen(found.1)
		for a,b in objects{
			braces:=0,start:=0,add:=StrPut(SubStr(code,1,InStr(code,b.name)),"utf-8")-2,b.start:=add
			loop,% codeobj.MaxIndex()
			{
				line:=codeobj[(A_Index-1)+b.line+1],ln:=(A_Index-1)+b.line+1,add+=StrPut(line,"utf-8")
				if InStr(line," " Chr(59))
					line:=RegExReplace(line,"(\s*" Chr(59) ".*)")
				line:=Trim(line)
				if(SubStr(line,0,1)="{")
					braces++,start:=1
				if(SubStr(line,1,1)="}")
					braces--
				if(start&&braces=0)
					break
			}
			b.end:=add
		}
		pos:=1,methods:=[],list:=""
		for a,b in objects
			list:=a "," list
		list:=Trim(list,","),others:=[]
		for a,b in {Method:code_explorer.function,Property:"Om`n)^\s*((\w|[^\x00-\x7F])+)\[(.*)?\][\s+;.*\s+]?[\s*]?{"}{
			pos:=1
			while,pos:=RegExMatch(code,b,found,pos){
				if(found.1="if"){
					pos:=found.Pos(1)+StrLen(found.1)
					Continue
				}
				for index,name in StrSplit(list,","){
					info:=objects[name]
					if(Pos>info.start&&Pos<info.end){
						cls:=ssn(cce,"info[@text='" SubStr(info.name,7) "']")
						cexml.under({under:cls,node:"info",att:{type:a,file:filename,pos:StrPut(SubStr(code,1,found.pos(1)),"utf-8")-2,text:found.1,upper:upper(found.1),args:found.value(3),class:found.1,root:parentfile,order:"text,type,file,args"}}),pos:=found.Pos(1)+StrLen(found.1)
						Continue,2
					}
				}
				cexml.under({under:cce,node:"info",att:{type:"Function",file:filename,pos:StrPut(SubStr(code,1,found.pos(1)),"utf-8")-2,text:found.1,upper:upper(found.1),args:found.value(3),class:found.1,root:parentfile,order:"text,type,file,args"}}),pos:=found.Pos(1)+StrLen(found.1)
			}
		}
		ubp(csc(),filename),pos:=fun.Pos(1)+len,this.explore[parentfile,filename]:=explore,this.skip[filename]:=skip
	}
	remove(filename){
		this.explore.remove(ssn(filename,"@file").text),list:=sn(filename,"@file")
		while,ll:=list.item[A_Index-1]
			this.explore.Remove(ll.text)
	}
	populate(){
		code_explorer.Refresh_Code_Explorer()
		Gui,1:TreeView,SysTreeView321
	}
	Refresh_Code_Explorer(){
		if v.options.Hide_Code_Explorer
			return
		Gui,1:Default
		Gui,1:TreeView,SysTreeView322
		TV_Delete()
		code_explorer.scan(current()),TV_Delete(),cet:=code_explorer.treeview:=new xml("TreeView"),bookmark:=[]
		SplashTextOff
		GuiControl,1:-Redraw,SysTreeView322
		fz:=cexml.sn("//main"),TV_Delete()
		while,fn:=fz.Item[A_Index-1]{
			things:=sn(fn,"descendant::*"),filename:=ssn(fn,"@file").text
			SplitPath,filename,file
			main:=TV_Add(file)
			while,tt:=things.Item[A_Index-1],ea:=xml.ea(tt){
				if(ea.type="variable"||tt.nodename="file")
					continue
				if !top:=cet.ssn("//main[@file='" filename "'][@type='" ea.type "']"){
					if !(ea.type~="(Method|Property)")
						top:=cet.Add({path:"main",att:{file:filename,type:ea.type,tv:TV_Add(ea.type,main,"Vis Sort")},dup:1})
				}
				text:=ea[StrSplit(ea.order,",").1]
				if(ea.type~="(Method|Property)")
					cet.under({under:last,node:"info",att:{text:text,pos:ea.pos,file:ea.file,type:ea.type,tv:TV_Add(text,ssn(last,"@tv").text,"Sort")}})
				else
					last:=cet.under({under:top,node:"info",att:{text:text,pos:ea.pos,file:ea.file,type:ea.type,tv:TV_Add(text,ssn(top,"@tv").text,"Sort")}})
			}
		}
		if((bm:=bookmarks.sn("//file")).length){
			top:=TV_Add("Bookmarks")
			while,bb:=bm.Item[A_Index-1]{
				parent:=ssn(bb.ParentNode,"@file").text,pea:=xml.ea(bb)
				if !main:=cet.ssn("//main[@type='Bookmark']")
					main:=cet.Add({path:"main",att:{file:parent,type:"Bookmark"},dup:1})
				next:=cet.under({under:main,node:"file",att:{file:pea.file}}),marks:=sn(bb,"mark")
				while,mm:=marks.Item[A_Index-1],ea:=xml.ea(mm){
					cet.under({under:next,node:"mark",att:{file:pea.file,type:"Bookmark",line:ea.line,name:ea.name,tv:TV_Add(ea.name,top,"Vis")}})
				}
			}
		}
		GuiControl,1:+Redraw,SysTreeView322
		return
		GuiContextMenu:
		ControlGetFocus,Focus,% hwnd([1])
		if(Focus="SysTreeView322"){
			GuiControl,+g,SysTreeView322
			code_explorer.Refresh_Code_Explorer()
			GuiControl,+gcej,SysTreeView322
		}
		if(Focus="SysTreeView321"){
			for a,b in StrSplit("Add Group",",")
				Menu,rcm,Add,%b%,rcm
			Menu,rcm,show
			Menu,rcm,DeleteAll
			return
			rcm:
			if(A_ThisMenuItem="add group"){
				
			}else
				m("Coming Soon....maybe")
			return
			rcmnew:
			new()
			return
		}
		return
	}
	cej(){
		cej:
		if (A_GuiEvent="S"&&A_GuiEvent!="RightClick"){
			list:=""
			code_explorer.TreeView.Transform()
			if found:=code_explorer.TreeView.ssn("//*[@tv='" A_EventInfo "']"){
				ea:=xml.ea(found),parent:=ssn(found,"ancestor::main/@file").text,TV(files.ssn("//main[@file='" parent "']/descendant::file[@file='" ea.file "']/@tv").text)
				Sleep,200
				if (ea.type="bookmark"){
					csc().2024(ea.line)
					ControlFocus,,% "ahk_id" csc().sc
				}
				else
					csc().2160(ea.pos,ea.pos+StrPut(ea.text,"Utf-8")-1+_:=ea.type="class"?+6:+0),v.sc.2169,v.sc.2400
			}
			return
		}
		return
	}
}