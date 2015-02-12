#SingleInstance,Off
;download complete
/*
	TODO LIST:
	Make a plugin downloader
	Add plugin hotkeys to add to the menu editor.
	Find/Replace
	-Current Segment, Current Project, All Files
	maestrith(){
		plugin for uploading the new menu when I change it
		when the user enters goto/gosub have it show a list of all of the labels
		have it so that when you type in the name of a class then . it will bring up a list of the methods
	}
	bkid(){
		Scratch Pad is blinky on resize
	}
	samardac(){
		Rename include files from within Studio
		Can not find command to find and replace multiple items in all included documents, help me pleas.
	}
	tidy up script:
	Toolbars
	-Make it work on xml natively
	-Add the ability to add more toolbars.
	hotkey for adding selected words to a word list for the program
	-make windows show up inititally inside of the main window. centered.
	Change the version script to add tags for <changed> and <fixed> and so on.
	windows_to_replace(){
		Themes
		Code Vault
		Split Code
		Scratch Pad
	}
	video(){
		Omni-Search (Files,Menu items,...etc)
		Multiple Segments (discuss how segments work and show them)
		Quick Find
		GitHub Integration
	}
	hoppfrosch(){
		changing #includes manually causes issues with the file explorer
		-Create a "Refresh Project Explorer" option.
	}
	Don_Corleon(){
		Multiple Scintilla windows over/under rather than side by side.
	}
	Suggested_by_bgm(){
		Code_Vault(){
			Add an area for comments for snippets
		}
	}
*/

DetectHiddenWindows,On
file=%1%

;汉化
global zh_CN
zh_CN =
(
文件(&amp;F),File
自动更新,Auto_Update
检查更新(&amp;K),Check_For_Update
关闭(&amp;C),Close
编译(&amp;M),Compile
从选中段落创建新标签页(&amp;E),Create_Segment_From_Selection
调试脚本,Debug_Current_Script
退出(&amp;X),Exit
导出,Export
完全备份(&amp;F),Full_Backup
新建(&amp;N),New
新标签页打开(&amp;G),New_Segment
打开(&amp;O),Open
打开文件夹(&amp;D),Open_Folder
以前的脚本(&amp;V),Previous_Scripts
发布(&amp;P),Publish
移除标签页(&amp;T),Remove_Segment
运行(&amp;R),Run
由Ansii版本运行,Run_As_Ansii
由U32版本运行,Run_As_U32
由U64版本运行,Run_As_U64
运行注释块,Run_Comment_Block
运行选中代码(&amp;L),Run_Selected_Text
保存(&amp;S),Save
设置为默认编辑器(&amp;A),Set_As_Default_Editor
上传(&amp;U),Upload
编辑(&amp;E),Edit
自动补全,Auto_Add
比较,Compare
复制,Copy
自定义大小写设置,Custom_Case_Settings
剪切,Cut
调试设置,Debug_Settings
默认项目文件夹,Default_Project_Folder
复制行(&amp;D),Duplicate_Line
编辑自动替换(&amp;I),Edit_Replacements
查找(&amp;F),Find
替换,Find_Replace
补全缩进(&amp;X),Fix_Indent
FTP服务器(&amp;P),Ftp_Servers
行跳转,Go_To_Line
切换项目(&amp;E),Jump_to_Project
切换标签页(&amp;J),Jump_to_Segment
菜单编辑器(&amp;M),Menu_Editor
新建文件模板,New_File_Template
下一个(&amp;N),Next_Found
粘贴,Paste
自定义变量列表(&amp;V),Personal_Variable_List
上一个,Previous_Found
代理设置,Proxy_Settings
快速查找(&amp;Q),Quick_Find
重做(&amp;O),Redo
替换选中内容(&amp;S),Replace_Selected
复位缩放,Reset_Zoom
重载当前文件(&amp;R),Restore_Current_File
主题(&amp;T),Theme
切换当前行注释状态(&amp;L),Toggle_Comment_Line
撤销(&amp;U),Undo
宽度,Widths
选项(&amp;O),Options
高级自动引号,Auto_Advance_Quote
自动关闭查找,Auto_Close_Find
快速查找自动设置区域,Auto_Set_Area_On_Quick_Find
自动回车换行,Autocomplete_Enter_Newline
中央坐标,Center_Caret
检查当前脚本文件改动,Check_For_Edited_Files_On_Focus
禁用自动补全如果没有文件,Disable_Auto_Indent_For_Non_Ahk_Files
禁用自动保存,Disable_Autosave
禁用备份,Disable_Backup
在项目浏览器中禁用文件夹,Disable_Folders_In_Project_Explorer
禁用变量列表,Disable_Variable_List
启用关闭时保存,Enable_Close_On_Save
强制UTF-8,Force_Utf8
隐藏代码浏览器,Hide_Code_Explorer
隐藏缩进条,Hide_Indentation_Guides
隐藏项目浏览器,Hide_Project_Explorer
高亮当前区域,Highlight_Current_Area
显示坐标线,Show_Caret_Line
显示EOL,Show_EOL
显示空格,Show_WhiteSpace
小图标(&amp;I),Small_Icons
制表符宽度,Tab_Width
Virtual Space,Virtual_Space
Warn Overwrite On Export,导出是时警告文件覆盖
换行(&amp;W),Word_Wrap
快速查找设置(&amp;U),Quick_Find_Settings
大小写敏感(&amp;C),Case_Sensitive
清除选区(&amp;A),Clear_Selection
贪婪,Greed
多行,Multi-Line
正则表达式(&amp;R),Regex
设置选区(&amp;S),Set_Selection
自动缩进(&amp;A),Auto_Indent
补全下一行(&amp;I),Fix_Next_Line
自动补全(&amp;F),Full_Auto
工具(&amp;T),Tools
Github库,Github_Repository
MsgBox生成器(&amp;G),MsgBox_Creator
全部推送到一个分支(&amp;A),Post_All_In_One_Gist
多分支推送(&amp;M),Post_Multiple_Segment_Gist
更新Github信息,Update_Github_Info
特殊菜单(&amp;S),Special_Menu
添加按钮,Add_button
书签,Bookmarks
添加书签,Add_Bookmark
删除书签,Delete_Bookmark
跳至下个书签,Jump_To_Next_Bookmark
跳至上个书签,Jump_To_Previous_Bookmark
管理书签,Manage_Bookmarks
清除行状态,Clear_Line_Status
代码库(&amp;V),Code_Vault
创建快捷方式,Create_Launcher
Debug,Debug
步进,Step_Into
步出,Step_Out
步过,Step_Over
删除匹配的括号,Delete_Matching_Brace
查找下一个括号(&amp;F),Find_Nearest_Brace
折叠,Folding
折叠全部,Fold_All
折叠当前层级,Fold_Current_Level
折叠指定层级,Fold_Level_X
展开全部,Unfold_All
展开当前层级,Unfold_Current_Level
展开指定层级,Unfold_Level_X
隐藏菜单,Hide_Menu
高亮匹配括号,Highlight_to_Matching_Brace
插入代码库文字,Insert_Code_Vault_Text
跳转至,Jump_To
跳转至Class,Jump_To_Class
跳转至第一个可用,Jump_To_First_Available
跳转至Function,Jump_To_Function
跳转至Include,Jump_To_Include
跳转至标签,Jump_To_Label
跳转至Method,Jump_To_Method
选中行下移,Move_Selected_Lines_Down
选中行上移,Move_Selected_Lines_Up
导航,Navigation
后退,Back
前进,Forward
下一个文件,Next_File
全搜索,Omni-Search
添加Function Call,Add_Function_Call
书签搜索,Bookmark_Search
Class搜索,Class_Search
文件搜索,File_Search
Function搜索,Function_Search
热键搜索,Hotkey_Search
Menu搜索,Menu_Search
Method搜索,Method_Search
全部搜索,Omni_Search
标签搜索,Search_Label
以前的文件,Previous_File
Scintilla代码快速查找,Quick_Scintilla_Code_Lookup
刷新代码浏览器,Refresh_Code_Explorer
刷新变量列表,Refresh_Variable_List
移除当前选区,Remove_Current_Selection
Scintilla代码查找(&amp;S),Scintilla_Code_Lookup
选择下一个重复项,Select_Next_Duplicate
显示菜单,Show_Menu
显示Scintilla代码在行内(&amp;W),Show_Scintilla_Code_In_Line
排序选区(&amp;O),Sort_Selected
空格,Spacing
在命令前添加空格,Add_Space_After_Commas
在命令前后添加空格,Add_Space_Before_And_After_Commas
在命令后添加空格,Add_Space_Before_Commas
移除选区内空格,Remove_Spaces_From_Selected
移除命令周围空格,RemoveSpacesFromAroundCommas
拆分代码,Split_Code
步过,Step_Over
移动到下个参数,Tab_To_Next_Comma
移动到上个参数,Tab_To_Previous_Comma
测试插件,Test_Plugin
切换多行注释状态(&amp;M),Toggle_Multiple_Line_Comment
文档单词待选列表,Words_In_Document
帮助(&amp;H),Help
关于(&amp;A),About
命令帮助,Command_Help
捐助,Donate
论坛(&amp;F),Forum
帮助(&amp;H),Help
社区(&amp;S),Social
测试中,Testing
便笺(&amp;P),Scratch_Pad
插件(&amp;L),Plugin
Make One Line,Make One Line
Auto Menu Adder,Menu自动添加
Capture Gif,Gif捕捉
GeekDude Paste,GeekDude粘贴
Upload Menus,Upload Menus
Mark All Files For Update,Mark All Files For Update
)


ComObjError(0)
if x:=ComObjActive("AHK-Studio"){
	x.open(file),x.scanfiles(),x.activate()
	ExitApp
}
ComObjError(1)
SetWorkingDir,%A_ScriptDir%
global v:=[],settings,files,menus,commands,positions,vversion,access_token,vault,preset,cexp,scintilla,bookmarks,cexml
settings:=new xml("settings","lib\settings.xml"),files:=new xml("files"),menus:=new xml("menus","lib\menus.xml"),commands:=new xml("commands","lib\commands.xml"),cexp:=new xml("code_explorer"),bookmarks:=new xml("bookmarks","lib\bookmarks.xml")
positions:=new xml("positions","lib\positions.xml"),vversion:=new xml("version","lib\version.xml"),access_token:=settings.ssn("//access_token").text
cexml:=new xml("code_explorer"),v.filescan:=[]
if !settings.ssn("//Auto_Indent")
	settings.Add({path:"Auto_Indent",att:{Full_Auto:1}})
vault:=new xml("vault","lib\vault.xml"),v.color:=[],preset:=new xml("preset","lib\preset.xml")
if (A_PtrSize=8&&A_IsCompiled=""){
	SplitPath,A_AhkPath,,dir
	if !FileExist(correct:=dir "\AutoHotkeyU32.exe"){
		m("Requires AutoHotkey 1.1 to run")
		ExitApp
	}
	run,"%correct%" "%A_ScriptName%",%A_ScriptDir%
	ExitApp
	return
}
;filecheck(),v.quick:=[]
v.quick:=[]
Menu,Tray,Icon,AHKStudio.ico
keywords(),gui(),ObjRegisterActive(pluginclass),plugins()
return
GuiDropFiles:
open(A_GuiEvent,1),openfile:=StrSplit(A_GuiEvent,"`n").1,main:=files.ssn("//main[@file='" openfile "']"),tv(ssn(main.firstchild,"@tv").text)

return
#Include %A_ScriptDir%
#Include about.ahk
#Include add bookmark.ahk
#Include Add Function Call.ahk
#Include Add Spaces After Commas.ahk
#Include add spaces before and after commas.ahk
#Include Add Spaces Before Commas.ahk
#Include addbutton.ahk
#Include arrows.ahk
#Include auto insert.ahk
#Include Auto_Update.ahk
#Include automenu.ahk
#Include Back.ahk
#Include brace.ahk
#Include bracesetup.ahk
#Include case settings.ahk
#Include center.ahk
#Include cgp.ahk
#Include changehotkey.ahk
#Include Check For Update.ahk
#Include check id.ahk
#Include Class Code Explorer.ahk
#Include class ftp.ahk
#Include class github.ahk
#Include class icon browser.ahk
#Include Class Omni_search_class.ahk
#Include Class PluginClass.ahk
#Include class rebar.ahk
#Include class s.ahk
#Include class search.ahk
#Include class toolbar.ahk
#Include class versionkeep.ahk
#Include class windowtracker.ahk
#Include class xml.ahk
#Include clean.ahk
#Include Clear Line Status.ahk
#Include close.ahk
#Include Code Vault.ahk
#Include color.ahk
#Include commit.ahk
#Include Compare.ahk
#Include compile main gist.ahk
#Include compile.ahk
#Include compilebox.ahk
#Include connect.ahk
#Include context.ahk
#Include convert hotkey.ahk
#Include copy.ahk
#Include create launcher.ahk
#Include Create Segment From Selection.ahk
#Include csc.ahk
#Include current.ahk
#Include cut.ahk
#Include deadend.ahk
#Include Debug Current Script.ahk
#Include debug settings.ahk
#Include debug.ahk
#Include Default Project Folder.ahk
#Include Default.ahk
#Include defaultfont.ahk
#Include Delete Bookmark.ahk
#Include delete matching brace.ahk
#Include detach.ahk
#Include display.ahk
#Include Dlg Color.ahk
#Include Dlg Font.ahk
#Include Donate.ahk
#Include Duplicate Line.ahk
#Include duplicates.ahk
#Include dupsel.ahk
#Include DynaRun.ahk
#Include edit replacements.ahk
#Include exit.ahk
#Include Export.ahk
#Include file search.ahk
#Include filecheck.ahk
#Include Find Nearest Brace.ahk
#Include find.ahk
#Include Find_Replace.ahk
#Include fix after.ahk
#Include fix indent.ahk
#Include focus.ahk
#Include fold.ahk
#Include Forward.ahk
#Include ftp servers.ahk
#Include full backup.ahk
#Include function search.ahk
#Include get access.ahk
#Include Get_Include.ahk
#Include getpos.ahk
#Include GetWebBrowser.ahk
#Include Github Repository.ahk
#Include global.ahk
#Include Go To Line.ahk
#Include google search selected.ahk
#Include gui.ahk
#Include help.ahk
#Include helpfile.ahk
#Include Highlight to Matching Brace.ahk
#Include History.ahk
#Include hk.ahk
#Include hltline.ahk
#Include Hotkey Search.ahk
#Include hotkeys.ahk
#Include hwnd.ahk
#Include inputbox.ahk
#Include Insert Code Vault.ahk
#Include json.ahk
#Include Jump To Next Bookmark.ahk
#Include jump to project.ahk
#Include Jump to Segment.ahk
#Include Jump To.ahk
#Include keywords.ahk
#Include lastfiles.ahk
#Include listvars.ahk
#Include local.ahk
#Include LV Select.ahk
#Include m.ahk
#Include Manage Bookmarks.ahk
#Include marginwidth.ahk
#Include menu editor.ahk
#Include menu search.ahk
#Include menu.ahk
#Include Menu_Editor_Icon.ahk
#Include Method Search.ahk
#Include move selected lines down.ahk
#Include move selected lines up.ahk
#Include Msgbox Creator.ahk
#Include multisel.ahk
#Include New File Template.ahk
#Include New Scintilla Window.ahk
#Include new segment.ahk
#Include new.ahk
#Include NewFile.ahk
#Include Next Found.ahk
#Include next-prev file.ahk
#Include notify.ahk
#Include omni search.ahk
#Include open folder.ahk
#Include open.ahk
#Include options.ahk
#Include paste.ahk
#Include Personal Variable List.ahk
#Include Plugins.ahk
#Include popftp.ahk
#Include posinfo.ahk
#Include post all in one gist.ahk
#Include Post Multiple Segment Gist.ahk
#Include previous found.ahk
#Include Previous Scripts.ahk
#Include ProjectFolder.ahk
#Include Proxy Settings.ahk
#Include publish.ahk
#Include qf.ahk
#Include Quick Scintilla Code Lookup.ahk
#Include redo.ahk
#Include Refresh Code Explorer.ahk
#Include Refresh Variable List.ahk
#Include refresh.ahk
#Include refreshthemes.ahk
#Include RegisterIDs.ahk
#Include RegisterObject.ahk
#Include Relative Path.ahk
#Include Remove Current Selection.ahk
#Include Remove Scintilla Window.ahk
#Include Remove Segment.ahk
#Include Remove Spaces From Selected.ahk
#Include replace selected.ahk
#Include replace.ahk
#Include Reset Zoom.ahk
#Include resize.ahk
#Include restore current file.ahk
#Include rgb.ahk
#Include Run As.ahk
#Include Run Comment Block.ahk
#Include run program.ahk
#Include run selected text.ahk
#Include run.ahk
#Include runfile.ahk
#Include runit.ahk
#Include save.ahk
#Include savegui.ahk
#Include scintilla code lookup.ahk
#Include scintilla.ahk
#Include Scratch Pad.ahk
#Include ScrollWheel.ahk
#Include Search Label.ahk
#Include Select Next Duplicate.ahk
#Include selectall.ahk
#Include set as default editor.ahk
#Include set.ahk
#Include setpos.ahk
#Include setup.ahk
#Include show scintilla code in line.ahk
#Include show.ahk
#Include sn.ahk
#Include social.ahk
#Include SocketEvent.ahk
#Include Sort Selected.ahk
#Include split code.ahk
#Include ssn.ahk
#Include Step Over.ahk
#Include step.ahk
#Include stop.ahk
#Include striperror.ahk
#Include t.ahk
#Include Tab To Next Comma.ahk
#Include Tab To Previous Comma.ahk
#Include tab width.ahk
#Include testing.ahk
#Include Theme.ahk
#Include themetext.ahk
#Include toggle comment line.ahk
#Include Toggle Multiple Line Comment.ahk
#Include togglemenu.ahk
#Include traymenu.ahk
#Include tv.ahk
#Include ubp.ahk
#Include undo.ahk
#Include update github info.ahk
#Include update.ahk
#Include upload.ahk
#Include urlcode.ahk
#Include Upper.ahk
#Include uppos.ahk
#Include URLDownloadToVar.ahk
#Include varbrowser.ahk
#Include Widths.ahk
#Include window.ahk
#Include Words In Document.ahk