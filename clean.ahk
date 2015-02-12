clean(clean,tab=""){
	clean:=RegExReplace(RegExReplace(RegExReplace(clean,"&")," ","_"),"\((\w)\)","(&amp;$1)")
	if tab
		return RegExReplace(clean,"[^\w ]")
	if InStr(clean,"`t")
		clean:=SubStr(clean,1,InStr(clean,"`t")-1)
	Loop,Parse,zh_CN,`n
	{
		IfInString, A_LoopField, % clean
		{
			clean := RegExReplace(A_LoopField,".*,(.*)","$1")
		}
	}

	return clean
}
