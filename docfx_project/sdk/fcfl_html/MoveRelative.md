_MoveRelative_
--------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub MoveRelative(ByVal NumToMove As Integer)
```

#### Description

This method sets the current record for the generic object either forward or backward by the number of records specified by the argument. The order of the records is determined by the database query used to build the generic object's recordset, or the order in which AddNew method calls were made. If the relative move moves earlier than the first record, the BOF flag will be set to True. If the move causes the current record to move past the final record, the EOF flag will be set to True. If this is a child object, it is important to realize that the record that this method will find is dependent on the current row in the parent object. This will find the proper record in this generic that is related to the current parent record.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| NumToMove | Yes | An integer of how many records to move. Positive integers move forward in the recordset. Negative values move backwards. |

**Example**

The following example queries for sites in the database. It then uses MoveRelative to change to a variety of records.

**JavaScript:**
```
  // Get sites so we can loop through them
  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.Query();

  // Go to 3rd record
  boSite.MoveRelative(2);
  Response.Write ("Site: " + boSite("name"));  

  // Go forward 3 more 
  boSite.MoveRelative(3);
  Response.Write ("Site: " + boSite("name"));  

  // Go  back 4
  boSite.MoveRelative(-4);
  Response.Write ("Site: " + boSite("name"));  

  // Forward 1 more - Same as MoveNext
  boSite.MoveRelative(1);
  Response.Write ("Site: " + boSite("name"));  
```

**Visual Basic:**
```
  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"
  boSite.Query

  boSite.MoveRelative (2)
  MsgBox "Site: " & boSite("name")

  boSite.MoveRelative (3)
  MsgBox "Site: " & boSite("name")

  boSite.MoveRelative (-4)
  MsgBox "Site: " & boSite("name")

  boSite.MoveRelative (1)
  MsgBox "Site: " & boSite("name")
```