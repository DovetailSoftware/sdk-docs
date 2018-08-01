_Count__(FCGeneric)_
--------------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Function Count() As Long
```

#### Description

This method returns back the number of rows currently in a generic object. For example, if you query a database table, and the query returned 14 rows, you would expect Count to return 14. If you then called on AddNew to add a row, it would return 15.

There is one small complexity to Count, however. If this generic object is a child object (that is, it was traversed from (in a query) from a parent object), the Count method will return how many rows in this generic object are related to the current row in the parent object. Thus, as you move through the parent object, the number of rows that Count returns will change.

To see how many total rows are in this generic object, even if it is a child object, use the TotalCount method.

**Returns**

The total number of rows in this generic. Or, for a child object, the number of records related to the current record in the parent object.

**Example**

The following example queries the case table and the notes_log table. Then, for each case, it reports how many notes are related.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

// Query case and notes_log

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  var boNotes = FCSession.CreateGeneric();

  boNotes.TraverseFromParent(boCase, "case_notes2notes_log");

  boCase.Query();

  // Loop through all cases

  // For each, print the case ID

  while (boCase.EOF != true)

  {

    Response.Write ("Case: " + boCase("id_number"));  

    // Now print out how many notes exist for that case only

    Response.Write ("  Number of Notes: " + boNotes.Count());

    // Now get the next case

    boCase.MoveNext();

  }

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Dim boNotes As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  Set boNotes = fc_session.CreateGeneric

  boNotes.TraverseFromParent boCase, "case_notes2notes_log"

  boCase.Query

  While boCase.EOF = False

    MsgBox "Case: " & boCase("id_number") & " " & "Num of notes: " & _

           Trim$(Str$(boNotes.Count))

    boCase.MoveNext

  Wend