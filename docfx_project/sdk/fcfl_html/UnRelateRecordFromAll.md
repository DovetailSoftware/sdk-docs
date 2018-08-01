_UnRelateRecordFromAll_
--------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub UnRelateRecordFromAll(ByVal the_rel As String)
```

#### Description

This method will unrelate the current record in a generic object from all other objects that it is related to via the specified relation. For example, if a case is related to 100 research logs, and you would like to unrelate it from all of them (in one method call), simply call this method with the proper case relation.

The method works for any and all cardinalities (OTM, MTO, OTO, MTM), and the related objects do NOT need to be in a generic object.

**Note**: The unrelate does not take place until the Update or UpdateAll method is called to update the current record in the generic object.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| the_rel | Yes | The relation to use to find the objects to unrelate |

**Error Codes**

| Value | Meaning |
|:--- |:--- |
| 12031 | This operation is not valid for a generic that is marked distinct |

#### Examples

The following example unrelates the specified case from all part_used records.

**JavaScript:**
```
  // Query cases

  var boCase = FCSession.CreateGeneric();
  boCase.SimpleQuery("case");
  boCase.Query();

  // Now unrelate it from all part used records
  boCase.UnRelateRecordFromAll("case2part_used");

  boCase.Update();
```

**Visual Basic:**
```
  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric
  boCase.SimpleQuery "case"
  boCase.Query

  boCase.UnRelateRecordFromAll "case2part_used"

  boCase.Update
```