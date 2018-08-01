_Initialize_
------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Sub Initialize()
```

#### Description

This method initializes the FCApplication, including:

*  Reading the fc.env file
*  Logging into the database
*  Opening Log Files
*  Caching schema data
*  Caching meta-data

**Example**

The following example displays the schema revision of the database.

**JavaScript:**
```
var FCApp = new ActiveXObject("FCFL.fcapplication");
FCApp.WorkingDirectory = "C:\\\inetpub\\\wwwroot\\\production";
FCApp.Initialize();
```