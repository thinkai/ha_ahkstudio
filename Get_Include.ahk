Get_Include(){
	getinclude:
	main:=current(2).file
	SplitPath,main,,dir
	FileSelectFile,filename,,%dir%,Select a file to include,*.ahk
	if(ErrorLevel||filename="")
		return
	SplitPath,filename,fn,outdir
	current:=current(2).file
	SplitPath,current,,currentdir
	newfile:=outdir=currentdir?fn:outdir "\" fn
	newfile:=newfile~="\.ahk$"?newfile:newfile ".ahk"
	Relative:=RelativePath(current(2).file,newfile)
	sc:=csc(),cp:=sc.2008,sc.2003(cp," " relative),sc.2160(cp+StrLen(" " Relative),cp+StrLen(" " Relative))
	if(ssn(current(),"@file").text=current(2).file){
		FileRead,text,%newfile%
		new_segment(newfile,text,1)
	}
	return
}