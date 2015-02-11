test_plugin(){
	save(),Exit(1,1)
	return
}
plugins(){
	plugins:
	if !FileExist("plugins")
		FileCreateDir,Plugins
	if !plugin:=menus.ssn("//menu[@clean='Plugin']")
		plugin:=menus.Add({path:"menu",att:{clean:"Plugin",name:"P&lugin"},dup:1})
	Loop,plugins\*.ahk
	{
		FileRead,plg,%A_LoopFileFullPath%
		pos:=1
		while,pos:=RegExMatch(plg,"Oi)\;menu\s*(.*)",found,pos){
			item:=StrSplit(found.1,",")
			if !ssn(plugin,"menu[@name='" item.1 "']")
				menus.under({under:plugin,node:"menu",att:{name:item.1,clean:clean(item.1),plugin:A_LoopFileFullPath,option:item.2}})
			pos:=found.Pos(1)+1
		}
	}
	SetTimer,refreshmenu,-200
	return
	refreshmenu:
	Gui,1:Menu,% Menu("main")
	return
}