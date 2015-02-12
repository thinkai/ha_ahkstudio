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

;����
global zh_CN
zh_CN =
(
�ļ�(&amp;F),File
�Զ�����,Auto_Update
������(&amp;K),Check_For_Update
�ر�(&amp;C),Close
����(&amp;M),Compile
��ѡ�ж��䴴���±�ǩҳ(&amp;E),Create_Segment_From_Selection
���Խű�,Debug_Current_Script
�˳�(&amp;X),Exit
����,Export
��ȫ����(&amp;F),Full_Backup
�½�(&amp;N),New
�±�ǩҳ��(&amp;G),New_Segment
��(&amp;O),Open
���ļ���(&amp;D),Open_Folder
��ǰ�Ľű�(&amp;V),Previous_Scripts
����(&amp;P),Publish
�Ƴ���ǩҳ(&amp;T),Remove_Segment
����(&amp;R),Run
��Ansii�汾����,Run_As_Ansii
��U32�汾����,Run_As_U32
��U64�汾����,Run_As_U64
����ע�Ϳ�,Run_Comment_Block
����ѡ�д���(&amp;L),Run_Selected_Text
����(&amp;S),Save
����ΪĬ�ϱ༭��(&amp;A),Set_As_Default_Editor
�ϴ�(&amp;U),Upload
�༭(&amp;E),Edit
�Զ���ȫ,Auto_Add
�Ƚ�,Compare
����,Copy
�Զ����Сд����,Custom_Case_Settings
����,Cut
��������,Debug_Settings
Ĭ����Ŀ�ļ���,Default_Project_Folder
������(&amp;D),Duplicate_Line
�༭�Զ��滻(&amp;I),Edit_Replacements
����(&amp;F),Find
�滻,Find_Replace
��ȫ����(&amp;X),Fix_Indent
FTP������(&amp;P),Ftp_Servers
����ת,Go_To_Line
�л���Ŀ(&amp;E),Jump_to_Project
�л���ǩҳ(&amp;J),Jump_to_Segment
�˵��༭��(&amp;M),Menu_Editor
�½��ļ�ģ��,New_File_Template
��һ��(&amp;N),Next_Found
ճ��,Paste
�Զ�������б�(&amp;V),Personal_Variable_List
��һ��,Previous_Found
��������,Proxy_Settings
���ٲ���(&amp;Q),Quick_Find
����(&amp;O),Redo
�滻ѡ������(&amp;S),Replace_Selected
��λ����,Reset_Zoom
���ص�ǰ�ļ�(&amp;R),Restore_Current_File
����(&amp;T),Theme
�л���ǰ��ע��״̬(&amp;L),Toggle_Comment_Line
����(&amp;U),Undo
���,Widths
ѡ��(&amp;O),Options
�߼��Զ�����,Auto_Advance_Quote
�Զ��رղ���,Auto_Close_Find
���ٲ����Զ���������,Auto_Set_Area_On_Quick_Find
�Զ��س�����,Autocomplete_Enter_Newline
��������,Center_Caret
��鵱ǰ�ű��ļ��Ķ�,Check_For_Edited_Files_On_Focus
�����Զ���ȫ���û���ļ�,Disable_Auto_Indent_For_Non_Ahk_Files
�����Զ�����,Disable_Autosave
���ñ���,Disable_Backup
����Ŀ������н����ļ���,Disable_Folders_In_Project_Explorer
���ñ����б�,Disable_Variable_List
���ùر�ʱ����,Enable_Close_On_Save
ǿ��UTF-8,Force_Utf8
���ش��������,Hide_Code_Explorer
����������,Hide_Indentation_Guides
������Ŀ�����,Hide_Project_Explorer
������ǰ����,Highlight_Current_Area
��ʾ������,Show_Caret_Line
��ʾEOL,Show_EOL
��ʾ�ո�,Show_WhiteSpace
Сͼ��(&amp;I),Small_Icons
�Ʊ�����,Tab_Width
Virtual Space,Virtual_Space
Warn Overwrite On Export,������ʱ�����ļ�����
����(&amp;W),Word_Wrap
���ٲ�������(&amp;U),Quick_Find_Settings
��Сд����(&amp;C),Case_Sensitive
���ѡ��(&amp;A),Clear_Selection
̰��,Greed
����,Multi-Line
������ʽ(&amp;R),Regex
����ѡ��(&amp;S),Set_Selection
�Զ�����(&amp;A),Auto_Indent
��ȫ��һ��(&amp;I),Fix_Next_Line
�Զ���ȫ(&amp;F),Full_Auto
����(&amp;T),Tools
Github��,Github_Repository
MsgBox������(&amp;G),MsgBox_Creator
ȫ�����͵�һ����֧(&amp;A),Post_All_In_One_Gist
���֧����(&amp;M),Post_Multiple_Segment_Gist
����Github��Ϣ,Update_Github_Info
����˵�(&amp;S),Special_Menu
��Ӱ�ť,Add_button
��ǩ,Bookmarks
�����ǩ,Add_Bookmark
ɾ����ǩ,Delete_Bookmark
�����¸���ǩ,Jump_To_Next_Bookmark
�����ϸ���ǩ,Jump_To_Previous_Bookmark
������ǩ,Manage_Bookmarks
�����״̬,Clear_Line_Status
�����(&amp;V),Code_Vault
������ݷ�ʽ,Create_Launcher
Debug,Debug
����,Step_Into
����,Step_Out
����,Step_Over
ɾ��ƥ�������,Delete_Matching_Brace
������һ������(&amp;F),Find_Nearest_Brace
�۵�,Folding
�۵�ȫ��,Fold_All
�۵���ǰ�㼶,Fold_Current_Level
�۵�ָ���㼶,Fold_Level_X
չ��ȫ��,Unfold_All
չ����ǰ�㼶,Unfold_Current_Level
չ��ָ���㼶,Unfold_Level_X
���ز˵�,Hide_Menu
����ƥ������,Highlight_to_Matching_Brace
������������,Insert_Code_Vault_Text
��ת��,Jump_To
��ת��Class,Jump_To_Class
��ת����һ������,Jump_To_First_Available
��ת��Function,Jump_To_Function
��ת��Include,Jump_To_Include
��ת����ǩ,Jump_To_Label
��ת��Method,Jump_To_Method
ѡ��������,Move_Selected_Lines_Down
ѡ��������,Move_Selected_Lines_Up
����,Navigation
����,Back
ǰ��,Forward
��һ���ļ�,Next_File
ȫ����,Omni-Search
���Function Call,Add_Function_Call
��ǩ����,Bookmark_Search
Class����,Class_Search
�ļ�����,File_Search
Function����,Function_Search
�ȼ�����,Hotkey_Search
Menu����,Menu_Search
Method����,Method_Search
ȫ������,Omni_Search
��ǩ����,Search_Label
��ǰ���ļ�,Previous_File
Scintilla������ٲ���,Quick_Scintilla_Code_Lookup
ˢ�´��������,Refresh_Code_Explorer
ˢ�±����б�,Refresh_Variable_List
�Ƴ���ǰѡ��,Remove_Current_Selection
Scintilla�������(&amp;S),Scintilla_Code_Lookup
ѡ����һ���ظ���,Select_Next_Duplicate
��ʾ�˵�,Show_Menu
��ʾScintilla����������(&amp;W),Show_Scintilla_Code_In_Line
����ѡ��(&amp;O),Sort_Selected
�ո�,Spacing
������ǰ��ӿո�,Add_Space_After_Commas
������ǰ����ӿո�,Add_Space_Before_And_After_Commas
���������ӿո�,Add_Space_Before_Commas
�Ƴ�ѡ���ڿո�,Remove_Spaces_From_Selected
�Ƴ�������Χ�ո�,RemoveSpacesFromAroundCommas
��ִ���,Split_Code
����,Step_Over
�ƶ����¸�����,Tab_To_Next_Comma
�ƶ����ϸ�����,Tab_To_Previous_Comma
���Բ��,Test_Plugin
�л�����ע��״̬(&amp;M),Toggle_Multiple_Line_Comment
�ĵ����ʴ�ѡ�б�,Words_In_Document
����(&amp;H),Help
����(&amp;A),About
�������,Command_Help
����,Donate
��̳(&amp;F),Forum
����(&amp;H),Help
����(&amp;S),Social
������,Testing
���(&amp;P),Scratch_Pad
���(&amp;L),Plugin
Make One Line,Make One Line
Auto Menu Adder,Menu�Զ����
Capture Gif,Gif��׽
GeekDude Paste,GeekDudeճ��
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