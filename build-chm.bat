@echo off
del hhw\*.* /Q
htmlhelp.exe /Q /T:%cd%\hhw /C
regsvr32 %cd%\hhw\itcc.dll /s

rem make a backup copy of _site js/css
copy docfx_project\_site\styles\main.css override\hold-main.css
copy docfx_project\_site\styles\docfx.js override\hold-docfx.js

rem replace the _site js/css to turn off javascript and add styles
copy override\main.css docfx_project\_site\styles\main.css
copy override\docfx.js docfx_project\_site\styles\docfx.js

hhw\hhc.exe sdk.hhp

rem restore backup copies of _site js/css
copy override\hold-main.css docfx_project\_site\styles\main.css
copy override\hold-docfx.js docfx_project\_site\styles\docfx.js

rem delete backup copies of _site js/css
del override\hold-main.css
del override\hold-docfx.js
