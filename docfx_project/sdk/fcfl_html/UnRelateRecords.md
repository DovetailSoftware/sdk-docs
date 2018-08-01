UnRelateRecords


**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub UnRelateRecords(ByVal o_obj As FCGeneric, _
                           ByVal the_rel As String)
```

#### Description

This method will unrelate the current record in a generic object from the current record in the other specified object via the relation specified.

The relation specified must be valid for the generic object that the method is called on (not the generic object that is the first argument). You may unrelate the objects from either side.for example, suppose you wish to unrelate a case generic object and a site_part generic object. You could make the unrelate call from either object.

You must update one or the other objects via the Update or UpdateAll method for the relation to be cleared.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| o_obj | Yes | The other object to unrelate from |
| the_rel | Yes | The relation to use to find the objects to unrelate |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12010 | The specified relation does not relate these two objects |
| 12011 | The two objects must be in the same bulk |
| 12031 | This operation is not valid for a generic that is marked distinct |

#### Examples

The following example unrelates the specified case from the specified revision (mod_level).

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Find the case and revision (mod_level)

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  boCase.AppendFilter("objid", "=", "268435457");

  var boML = FCSession.CreateGeneric();

  boML.SimpleQuery("mod_level");

  boML.AppendFilter("objid", "=", "268435457");

  boCase.Bulk.Query();

  // Now unrelate them and commit the change

  boCase.UnRelateRecords(boML, "case_prt2part_info");

  boCase.Update();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Dim boML As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.AppendFilter "objid", "=", 268435457

  Set boML = fc_session.CreateGeneric

  boML.SimpleQuery "mod_level"

  boML.AppendFilter "objid", "=", 268435457

  boCase.Bulk.Query

  boCase.UnRelateRecords boML, "case_prt2part_info"

  boCase.Update