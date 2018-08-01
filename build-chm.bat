@echo off
rem make a backup copy of _site js/css
copy docfx_project\_site\styles\main.css override\hold-main.css
copy docfx_project\_site\styles\main.js override\hold-main.js
copy docfx_project\_site\styles\docfx.js override\hold-docfx.js
copy docfx_project\_site\styles\docfx.vendor.js override\hold-docfx.vendor.js

rem replace the _site js/css to turn off javascript and add styles
copy override\main.css docfx_project\_site\styles\main.css
copy override\main.js docfx_project\_site\styles\main.js
copy override\docfx.js docfx_project\_site\styles\docfx.js
copy override\docfx.vendor.js docfx_project\_site\styles\docfx.vendor.js

hhw\hhc.exe sdk.hhp

rem restore backup copies of _site js/css
copy override\hold-main.css docfx_project\_site\styles\main.css
copy override\hold-main.js docfx_project\_site\styles\main.js
copy override\hold-docfx.js docfx_project\_site\styles\docfx.js
copy override\hold-docfx.vendor.js docfx_project\_site\styles\docfx.vendor.js

rem delete backup copies of _site js/css
del override\hold-main.css
del override\hold-main.js
del override\hold-docfx.js
del override\hold-docfx.vendor.js
