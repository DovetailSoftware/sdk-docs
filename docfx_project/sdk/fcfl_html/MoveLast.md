_MoveLast_
----------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub MoveLast()
```

#### Description

This method sets the current record for the generic object to the last object in the recordset. The order of the records is determined by the database query used to build the generic object's recordset, or the order in which AddNew method calls were made.

If there are no records in the generic object, the BOF flag will be set to True.

If this is a child object, it is important to realize that the record that this method will find is dependent on the current row in the parent object. This will find the last record in this generic that is related to the current parent record.

**Example**

The following example queries for sites in the database. It then uses MoveLast and MovePrevious to iterate through the records.

**JavaScript:**
```
  // Get sites so we can loop through them
  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.Query();

  // Go to last record
  boSite.MoveLast();

  // Now print them out, backwards
  while (boSite.BOF != true)
  {
    Response.Write ("Site: " + boSite("name"));  
    boSite.MovePrevious();
  }
```

**Visual Basic:**
```
  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"
  boSite.Query

  boSite.MoveLast
  While boSite.BOF = False
    MsgBox "Site is: " & boSite("name")
    boSite.MovePrevious
  Wend
```