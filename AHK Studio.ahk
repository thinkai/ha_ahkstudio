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
检查更新(&amp;k),Check_For_Update
关闭(&amp;C),Close
编译(&amp;m),Compile
从选中段落创建新标签页(&amp;e),Create_Segment_From_Selection
调试脚本,Debug_Current_Script
退出(&amp;x),Exit
导出,Export
完全备份(&amp;F),Full_Backup
新建(&amp;N),New
新标签页打开(&amp;g),New_Segment
打开(&amp;O),Open
打开文件夹(&amp;d),Open_Folder
历史脚本(&amp;v),Previous_Scripts
发布(&amp;P),Publish
移除标签页(&amp;t),Remove_Segment
运行(&amp;R),Run
由Ansii版本运行,Run_As_Ansii
由U32版本运行,Run_As_U32
由U64版本运行,Run_As_U64
运行注释块,Run_Comment_Block
运行选中代码(&amp;l),Run_Selected_Text
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
编辑自动替换(&amp;i),Edit_Replacements
查找(&amp;F),Find
替换,Find_Replace
补全缩进(&amp;x),Fix_Indent
FTP服务器(&amp;p),Ftp_Servers
行跳转,Go_To_Line
切换项目(&amp;e),Jump_to_Project
切换标签页(&amp;J),Jump_to_Segment
菜单编辑器(&amp;M),Menu_Editor
新建文件模板,New_File_Template
下一个(&amp;N),Next_Found
粘贴,Paste
自定义变量列表(&amp;V),Personal_Variable_List
上一个,Previous_Found
代理设置,Proxy_Settings
快速查找(&amp;Q),Quick_Find
重做(&amp;o),Redo
替换选中内容(&amp;S),Replace_Selected
复位缩放,Reset_Zoom
重载当前文件(&amp;R),Restore_Current_File
主题(&amp;T),Theme
切换当前行注释状态(&amp;l),Toggle_Comment_Line
撤销(&amp;U),Undo
宽度,Widths
选项(&amp;O),Options
高级自动引号,Auto_Advance_Quote
自动关闭查找,Auto_Close_Find
快速查找自动设置区域,Auto_Set_Area_On_Quick_Find
自动回车换行,Autocomplete_Enter_Newline
Center Caret,Center_Caret
Check For Edited Files On Focus,Check_For_Edited_Files_On_Focus
禁用自动补全如果没有文件,Disable_Auto_Indent_For_Non_Ahk_Files
禁用自动保存,Disable_Autosave
禁用备份,Disable_Backup
在项目浏览器中禁用文件夹,Disable_Folders_In_Project_Explorer
禁用变量列表,Disable_Variable_List
启用关闭时保存,Enable_Close_On_Save
强制UTF-8,Force_Utf8
隐藏代码浏览器,Hide_Code_Explorer
隐藏缩进条,Hide_Indentation_Guides
Hide Project Explorer,Hide_Project_Explorer
Highlight Current Area,Highlight_Current_Area
Show Caret Line,Show_Caret_Line
Show EOL,Show_EOL
Show WhiteSpace,Show_WhiteSpace
小图标(&amp;I),Small_Icons
Tab Width,Tab_Width
Virtual Space,Virtual_Space
Warn Overwrite On Export,Warn_Overwrite_On_Export
换行(&amp;W),Word_Wrap
快速查找设置(&amp;u),Quick_Find_Settings
大小写敏感(&amp;C),Case_Sensitive
清除当前选择(&amp;a),Clear_Selection
Greed,Greed
Multi Line,Multi-Line
正则表达式(&amp;R),Regex
Set_Selection(&amp;S),Set_Selection
(自动缩进&amp;A),Auto_Indent
Fix_Next_Line(&amp;i),Fix_Next_Line
Full_Auto(&amp;F),Full_Auto
Tools(&amp;T),Tools
Github Repository,Github_Repository
MsgBox_Creator(&amp;g),MsgBox_Creator
Post_All_In_One_Gist(&amp;A),Post_All_In_One_Gist
Post_Multiple_Segment_Gist(&amp;M),Post_Multiple_Segment_Gist
Update Github Info,Update_Github_Info
Special_Menu(&amp;S),Special_Menu
Add Button,Add_button
Bookmarks,Bookmarks
Add Bookmark,Add_Bookmark
Delete Bookmark,Delete_Bookmark
Jump To Next Bookmark,Jump_To_Next_Bookmark
Jump To Previous Bookmark,Jump_To_Previous_Bookmark
Manage Bookmarks,Manage_Bookmarks
Clear Line Status,Clear_Line_Status
Code_Vault(&amp;V),Code_Vault
Create Launcher,Create_Launcher
Debug,Debug
Step Into,Step_Into
Step Out,Step_Out
Step Over,Step_Over
Delete Matching Brace,Delete_Matching_Brace
Find_Nearest_Brace(&amp;F),Find_Nearest_Brace
Folding,Folding
Fold All,Fold_All
Fold Current Level,Fold_Current_Level
Fold Level X,Fold_Level_X
Unfold All,Unfold_All
Unfold Current Level,Unfold_Current_Level
Unfold Level X,Unfold_Level_X
Hide Menu,Hide_Menu
Highlight to Matching Brace,Highlight_to_Matching_Brace
Insert Code Vault Text,Insert_Code_Vault_Text
Jump To,Jump_To
Jump To Class,Jump_To_Class
Jump To First Available,Jump_To_First_Available
Jump To Function,Jump_To_Function
Jump To Include,Jump_To_Include
Jump To Label,Jump_To_Label
Jump To Method,Jump_To_Method
Move Selected Lines Down,Move_Selected_Lines_Down
Move Selected Lines Up,Move_Selected_Lines_Up
Navigation,Navigation
Back,Back
Forward,Forward
Next File,Next_File
Omni-Search,Omni-Search
Add Function Call,Add_Function_Call
Bookmark Search,Bookmark_Search
Class Search,Class_Search
File Search,File_Search
Function Search,Function_Search
Hotkey Search,Hotkey_Search
Menu Search,Menu_Search
Method Search,Method_Search
Omni Search,Omni_Search
Search Label,Search_Label
Previous File,Previous_File
Quick Scintilla Code Lookup,Quick_Scintilla_Code_Lookup
Refresh Code Explorer,Refresh_Code_Explorer
Refresh Variable List,Refresh_Variable_List
Remove Current Selection,Remove_Current_Selection
Scintilla_Code_Lookup(&amp;S),Scintilla_Code_Lookup
Select Next Duplicate,Select_Next_Duplicate
Show Menu,Show_Menu
Show_Scintilla_Code_In_Line(&amp;w),Show_Scintilla_Code_In_Line
(&amp;o),Sort_Selected
Spacing,Spacing
Add Space After Commas,Add_Space_After_Commas
Add Space Before And After Commas,Add_Space_Before_And_After_Commas
Add Space Before Commas,Add_Space_Before_Commas
Remove Spaces From Selected,Remove_Spaces_From_Selected
RemoveSpacesFromAroundCommas,RemoveSpacesFromAroundCommas
Split Code,Split_Code
Step Over,Step_Over
Tab To Next Comma,Tab_To_Next_Comma
Tab To Previous Comma,Tab_To_Previous_Comma
Test Plugin,Test_Plugin
Toggle_Multiple_Line_Comment(&amp;M),Toggle_Multiple_Line_Comment
Words In Document,Words_In_Document
Help(&amp;H),Help
About(&amp;A),About
Command Help,Command_Help
Donate,Donate
Forum(&amp;F),Forum
Help(&amp;H),Help
Social(&amp;S),Social
Testing,Testing
Scratch_Pad(&amp;P),Scratch_Pad
Plugin(&amp;l),Plugin
Make One Line,Make_One_Line
Auto Menu Adder,Auto_Menu_Adder
Capture Gif,Capture_Gif
GeekDude Paste,GeekDude_Paste
Paste Clipboard,Paste_Clipboard
Mark All Files For Update,Mark_All_Files_For_Update
Plugin(&amp;l),Plugin
Capture Gif,Capture_Gif
Auto Menu Adder,Auto_Menu_Adder
GeekDude Paste,GeekDude_Paste
Make One Line,Make_One_Line
Paste Clipboard,Paste_Clipboard
Upload Menus,Upload_Menus
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