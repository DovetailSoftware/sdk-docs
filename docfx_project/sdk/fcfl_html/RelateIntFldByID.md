_RelateIntFldByID_
---------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub RelateIntFldByID(ByVal the_objid As Long, _
                            ByVal the_field As String)
```

#### Description

There are a number of fields (not relations!) that hold objids of other tables in them. For example, in the site_part table, the _site_objid_ field contains the objid of the related Site object.

This method stores the specified objid for the _current_ row of the generic object in the specified field.

It is basically the same as setting the relation via the Fields collection. This method is provided for compatibility. It can be used with any long integer field.

You must update the object via the Update or UpdateAll method for the relation to take place.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| the_objid | Yes | The objid of the object to relate to |
| the_field | Yes | The field to store the objid |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12014 | The specified field is not a long integer field |
| 12031 | This operation is not valid for a generic that is marked distinct |

#### Examples

The following example sets the site_objid field of a site_part to a specific value: 268435457.

**JavaScript:**
```
  // Get some site_parts
  var boSitePart = FCSession.CreateGeneric();
  boSitePart.SimpleQuery("site_part");
  boSitePart.Query();

  // Relate the site_objid field to a specific objid
  boSitePart.RelateIntFldByID(268435457, "site_objid");
  boSitePart.Update(); 
```

**Visual Basic:**
```
  Dim boSitePart As FCGeneric
  Set boSitePart = fc_session.CreateGeneric
  boSitePart.SimpleQuery "site_part"
  boSitePart.Query

  boSitePart.RelateIntFldByID 268435457, "site_objid"
  boSitePart.Update
```