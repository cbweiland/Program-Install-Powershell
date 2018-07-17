Set WshShell = WScript.CreateObject("WScript.Shell")


WScript.Sleep (3600)
WshShell.SendKeys "{LEFT}"
WScript.Sleep (200)
WshShell.SendKeys "{ENTER}"
