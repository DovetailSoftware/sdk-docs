_Fields_
-----

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public Fields As Collection
```

#### Description

This property is used to read or write specific fields in the current record of a generic object. The name of the field specified must be one that is valid for the generic object. You must also use the correct data type for the field when using it.

**Note**: If you query a table or view, and do not include a field (or MTO/OTOP relation) in the DataFields, you will receive an error if you attempt to read or set that field for any row in the generic object.

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12023 | The field specified is not valid for this generic object |
| 12030 | The user attempted to access a field in a generic object that contains no rows |
| 12031 | This operation is not valid for a generic that is marked distinct |
| 12034 | The value specified is out of range for the field's datatype |

#### Examples

The following example demonstrates writing out some key fields from the site table after it is queried in the database. Then, some of the fields are modified so that they can be updated in the database.  
  
**JavaScript:**
```
  // Set up a query of all rows in site table
  var boSite = FCSession.CreateGeneric();
  boSite.DBObjectName = "site";
  boSite.Query();

  // For the first row, print out some key fields and set one
  // Then update the site

  Response.Write ("Site ID  : " + boSite.Fields("site_id"));
  Response.Write ("Site Name: " + boSite("name"));

  boSite("external_id") = "My external ID";
  boSite.Update();
```

**Visual Basic:**
```
  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"
  boSite.Query

  MsgBox "Site ID  : " & boSite.Fields("site_id")
  MsgBox "Site Name: " & boSite("name")

  boSite("external_id") = "Another external ID"
  boSite.Update
```