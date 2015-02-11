new_segment(new:="",text:="",adjusted:=""){
	cur:=current(2).file
	SplitPath,cur,,dir
	if !new
	{
		FileSelectFile,new,s,%dir%,Create a new Segment,*.ahk
		new:=new~="\.ahk$"?new:new ".ahk"
		if FileExist(new)
			return m("File Already Exists.","Please create a new file")
		if ErrorLevel
			return
		SplitPath,new,filename,dir,,func
	}
	if node:=ssn(current(1),"file[@file='" new "']")
		return tv(ssn(node,"@tv").Text)
	SplitPath,new,file,newdir,,function
	Gui,1:Default
	Relative:=relativepath(cur,new)
	func:=clean(func),current:=ssn(current(1),"@file").text
	SplitPath,current,,currentdir
	obj:=NewFile(cur,new)
	incfilename:=newdir=currentdir?file:new
	select:=files.under({under:obj.obj,node:"file",att:{file:new,filename:file,include:Chr(35) "Include " Relative,tv:obj.tv}})
	;v.filelist[new]:=1
	update({file:new,text:text})
	if(adjusted){
		tv(obj.tv)
		return
	}
	mainfile:=ssn(current(1),"@file").text
	SplitPath,mainfile,,outdir
	StringReplace,newinclude,incfilename,%outdir%,,All
	main:=update({get:mainfile}),main.="`n#Include " Relative
	update({file:mainfile,text:main})
	current(1).firstchild.removeattribute("sc")
	if (text=""){
		MsgBox,36,Insert Function?,Add a new function named %func% to the new Segment?
		IfMsgBox,Yes
			text:=func "(){`r`n`r`n}"
	}
	update({edited:cur}),update({edited:new}),update({file:new,text:text})
	tv(obj.tv)
}