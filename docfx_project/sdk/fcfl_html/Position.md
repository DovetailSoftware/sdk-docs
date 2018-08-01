_Position_
----------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public Position As Long
```

#### Description

This property contains the absolute record number of the current record in the generic object. This property can be used to get the record number that is currently active, and can be used to set the current record in the generic object.

If you are not on an active record (if you have moved before the first record, or after the last one), the Position property will be set to a value less than zero.

It is not recommended to use this property to set the current record. Rather, use the MoveFirst, MoveLast, MovePrevious, MoveNext, and MoveRelative methods.

**Example**

The following example demonstrates querying the case table, and printing out the value of the position as we move through the data in the returned recordset.

**JavaScript:**
```
  // Get all cases
  var boCase = FCSession.CreateGeneric();
  boCase.SimpleQuery("case");

  // Query the data, and display the position
  boCase.Query();

  while (boCase.EOF != true)
  {
    Response.Write (boCase.Position);  
    boCase.MoveNext();
  }
```

**Visual Basic:**
```
  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric
  boCase.SimpleQuery "case"
  boCase.Query

  While boCase.EOF = False
    MsgBox "Position: " & Trim$(Str$(boCase.Position))
    boCase.MoveNext
  Wend
```