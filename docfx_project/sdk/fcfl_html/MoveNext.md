_MoveNext_
----------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Sub MoveNext()
```

#### Description

This method sets the current record for the generic object to the next object in the recordset. The order of the records is determined by the database query used to build the generic object's recordset, or the order in which AddNew method calls were made.

If there are no more records in the generic object, the EOF flag will be set to True.

If this is a child object, it is important to realize that the record that this method will find is dependent on the current row in the parent object. This will find the next record in this generic that is related to the current parent record.

**Example**

The following example queries for sites in the database. It then uses MoveFirst and MoveNext to iterate through the records.

**JavaScript:**
```
  // Get sites so we can loop through them
  var boSite = FCSession.CreateGeneric();
  boSite.SimpleQuery("site");
  boSite.Query();

  // This is not needed, as the query does a MoveFirst
  boSite.MoveFirst();

  // Now print them out
  while (boSite.EOF != true)
  {
    Response.Write ("Site: " + boSite("name"));  
    boSite.MoveNext();
  }
```

**Visual Basic:**
```
  Dim boSite As FCGeneric

  Set boSite = fc_session.CreateGeneric
  boSite.SimpleQuery "site"
  boSite.Query
  boSite.MoveFirst

  While boSite.EOF = False
    MsgBox "Site is: " & boSite("name")
    boSite.MoveNext
  Wend
```