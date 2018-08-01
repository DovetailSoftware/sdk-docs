_CreateBulk_
------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

```
Public Function CreateBulk(bulk_name As String) As FCBulk
```

**Returns**

A new FCBulk object, or a reference to the existing bulk with the given name.

#### Description

This method creates a new FCBulk object. It is passed the name of a bulk object, and creates and initializes the bulk. In common applications you will **never need to execute** this method, as it is called automatically when you set the name of the bulk on a generic object.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| BulkName | Yes | Name of the bulk to create |
