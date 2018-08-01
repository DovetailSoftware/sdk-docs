_GetField_
----------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Function GetField(ByVal field_name As String) As Variant
```

#### Description

This method returns the value in a column of the current record in a generic object. It is exactly the same as using the Fields property. It is provided for similarity with ClearBasic.

**Returns**

The value in the field is returned.

**Example**

The following example queries for a specific site. It then displays fields using the GetFields method.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Find one site

  var boSite = FCSession.CreateGeneric();

  boSite.SimpleQuery("site");

  boSite.AppendFilter("objid", "=", 268435457);

  boSite.Query();

  // Print out some data with GetField

  Response.Write ("Site ID  : " + boSite.GetField("site_id"));

  Response.Write ("Site Name: " + boSite.GetField("name"));

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery "site"

  boSite.AppendFilter "objid", "=", 268435457

  boSite.Query

  MsgBox "Site ID  : " & boSite.GetField("site_id")

  MsgBox "Site Name: " & boSite.GetField("name")