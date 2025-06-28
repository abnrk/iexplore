#Requires AutoHotkey v1.1
#NoTrayIcon
RegRead, url, HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main, Start Page
if A_Args.Length() != 0 {
	url := A_Args[1]
}
ie := ComObjCreate("InternetExplorer.Application")
ie.Visible := true
ie.Navigate(url)
