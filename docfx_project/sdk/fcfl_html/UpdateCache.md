_UpdateCache_
-------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Sub UpdateCache()
```

#### Description

This method updates the meta-data cache files, as well as the in-memory cache data. By having this method available, you can update your cache data on-the-fly, without having to restart your application, or re-instantiate your FCApplication object.

**Example**

The following example updates the meta-data cache information for an FCApplication object that is part of a web application.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

var  FCApp;

FCApp = Application.Contents("FCApp");

FCApp.UpdateCache();