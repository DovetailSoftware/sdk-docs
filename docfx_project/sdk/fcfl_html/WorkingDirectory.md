### WorkingDirectory


**Object and Type**

Object  : FCApplication

Type     : Property

**Prototype**

```
Public WorkingDirectory As String
```

#### Description

This is the working directory of the FCApplication object. This is the directory where the FCApplication will look for the fc.env file. This is also the directory under which cache files and log files will be created. Using this property will allow you to have multiple FCApplication objects accessing different databases, all from the same machine.

**Example**

The following example shows how to set this property.

**JavaScript:**
```
var FCApp;

FCApp = new ActiveXObject("FCFL.fcapplication");
FCApp.WorkingDirectory = "C:\\\inetpub\\\wwwroot\\\production";
```

**Visual Basic:**
```
Dim fc_app As New FCApplication

fc_app.WorkingDirectory = "C:\\inetpub\\wwwroot\\testing"
```