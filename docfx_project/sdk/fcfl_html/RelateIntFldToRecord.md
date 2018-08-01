_RelateIntFldToRecord_
-------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub RelateIntFldToRecord(ByVal o_obj As FCGeneric, _
                                ByVal the_field As String)
```

#### Description

There are a number of fields (not relations!) that hold objids of other tables in them. For example, in the site_part table, the _site_objid_ field contains the objid of the related Site object.

This method stores the objid of the generic object specified in the field in named in the 2nd argument. This is performed for the current row in the generic object. This method can be called for any long integer field.

You must update the object via the Update or UpdateAll method for the relation to take place.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| o_obj | Yes | The object to which to relate |
| the_field | Yes | The field to use to store the objid of the other object |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12014 | The specified field is not a long integer field |
| 12031 | This operation is not valid for a generic that is marked distinct |

#### Examples

The following example sets the site_objid field of a site_part to the objid of a queried-for site.

**JavaScript:**
```
  // Get some site_parts
  var boSitePart = FCSession.CreateGeneric();
  boSitePart.SimpleQuery("site_part");

  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.AppendFilter("objid", "=", "268435457");
  boSitePart.Bulk.Query();

  // Relate the site_objid field to the objid of the first site record
  boSitePart.RelateIntFldToRecord(boSite, "site_objid");
  boSitePart.Update(); 
```

**Visual Basic:**
```
  Dim boSitePart As FCGeneric
  Dim boSite As FCGeneric

  Set boSitePart = fc_session.CreateGeneric
  boSitePart.SimpleQuery "site_part"

  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site_part"
  boSite.AppendFilter "objid", "=", 268435457
  boSitePart.Bulk.Query

  boSitePart.RelateIntFldToRecord boSite, "site_objid"
  boSitePart.Update
```