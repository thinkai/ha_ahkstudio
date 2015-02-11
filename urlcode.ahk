menuencode(string){
;if  A_IsUnicode<>1
;	string := Ansi2UTF8(string)
StringLen, len, string
Loop % len
{
SetFormat, IntegerFast, hex ;运算结果为HEX
StringMid, out, string, %A_Index%, 1
hex := Asc(out) ;获取单字节ascii值
hex2 := hex ;另存变量
StringReplace, hex, hex, 0x, , All
SetFormat, IntegerFast, d
hex2 := hex2 ;十进制化
;判断是否可见单字节字符 是则直接连接 否则编码
If (hex2==33 || (hex2>=39 && hex2 <=42) || hex2==45 || hex2 ==46 || (hex2>=48 && hex2<=57)    || (hex2>=65 && hex2<=90) || hex2==95 || (hex2>=97 && hex2<=122) || hex2==126)
	content .= out
Else
	content .= "`%" hex
}
Return RegExReplace(content,"%26amp%3b","&amp;")
}

;解码函数
menudecode(string){

StringReplace, string, string, +, %A_Space%, All ;去连接符
StringSplit, var, string, `% ;用%分割
Loop % var0
{
	asc_key := var%A_Index% ;取出变量
	if A_index = 1
		content .= asc_key ;直接串接
	else
	{
		if RegExMatch(asc_key,"\w{2}")
		{
			StringLeft, part1, asc_key, 2 ;分成两部分 hex 和单字节字符
			StringTrimLeft, part2, asc_key, 2
			content .=  Chr("0x" part1) part2
		}
		else
			content .= asc_key ;直接串接
	}
}
return content
}

Ansi2UTF8(sString)
{
   Ansi2Unicode(sString, wString, 0)
   Unicode2Ansi(wString, zString, 65001)
   Return zString
}
UTF82Ansi(zString)
{
   Ansi2Unicode(zString, wString, 65001)
   Unicode2Ansi(wString, sString, 0)
   Return sString
}
Ansi2Unicode(ByRef sString, ByRef wString, CP = 0)
{
     nSize := DllCall("MultiByteToWideChar"
      , "Uint", CP
      , "Uint", 0
      , "Uint", &sString
      , "int", -1
      , "Uint", 0
      , "int", 0)
   VarSetCapacity(wString, nSize * 2)
   DllCall("MultiByteToWideChar"
      , "Uint", CP
      , "Uint", 0
      , "Uint", &sString
      , "int", -1
      , "Uint", &wString
      , "int", nSize)
}
Unicode2Ansi(ByRef wString, ByRef sString, CP = 0)
{
     nSize := DllCall("WideCharToMultiByte"
      , "Uint", CP
      , "Uint", 0
      , "Uint", &wString
      , "int", -1
      , "Uint", 0
      , "int", 0
      , "Uint", 0
      , "Uint", 0)
   VarSetCapacity(sString, nSize)
   DllCall("WideCharToMultiByte"
      , "Uint", CP
      , "Uint", 0
      , "Uint", &wString
      , "int", -1
      , "str", sString
      , "int", nSize
      , "Uint", 0
      , "Uint", 0)
}
