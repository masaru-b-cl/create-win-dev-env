WScript.Echo WScript.Arguments(0)
Set objFso = CreateObject("Scripting.FileSystemObject")
Dim strScriptDir
strScriptDir = objFso.GetParentFolderName(WScript.ScriptFullName)

Const FONTS = &H14&
Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.Namespace(FONTS)
objFolder.CopyHere Wscript.Arguments(0)