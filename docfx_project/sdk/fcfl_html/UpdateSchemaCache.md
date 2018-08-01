_UpdateSchemaCache_
-------------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Sub UpdateSchemaCache()
```

#### Description

This method updates the schema cache files, as well as the in-memory schema data. By having this method available, you can update your schema data on-the-fly, without having to restart your application, or re-instantiate your FCApplication object.

**Example**

The following example updates the schema information for an FCApplication object that is part of a web application.

**JavaScript:**
```
var  FCApp;

FCApp = Application.Contents("FCApp");

FCApp.UpdateSchemaCache();
```