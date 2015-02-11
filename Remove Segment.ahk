Remove_Segment(){
	current:=current(),tv:=ssn(current(1).firstchild,"@tv").text,filename:=ssn(current(1),"@file").Text,include:=ssn(current(),"@include").text
	remfile:=current(3).file
	if (ssn(current,"@file").text=filename)
		return m("You can not remove the main file from the project")
	MsgBox,260,Remove Segment from this Project?,Remove it?
	IfMsgBox,No
		return
	MsgBox,308,Delete this file from the computer?,Permanently delete this file?
	IfMsgBox,Yes
		FileDelete,% ssn(current,"@file").text
	;v.filelist.remove(ssn(current,"@file").text)
	mainfile:=update({get:filename})
	StringReplace,mainfile,mainfile,%include%,,All
	update({file:filename,text:mainfile}),scin:=ssn(current(1),"file").removeattribute("sc"),TV(ssn(current(1),"@tv").text)
	Gui,1:TreeView,SysTreeView321
	TV_Delete(ssn(current,"@tv").text),tv(ssn(current.previousSibling,"@tv").text),parent:=current.ParentNode,current.parentnode.removechild(current)
	if !(parent.firstchild)
		TV_Delete(ssn(parent,"ancestor-or-self::folder/@tv").text),tv(tv)
	up:=update({edited:filename})
	rem:=cexml.ssn("//main[@file='" current(2).file "']descendant::file[@file='" remfile "']")
	rem.ParentNode.RemoveChild(rem)
}