_TotalCount_
------------

**Object and Type**

Object  : FCGeneric

Type     : Method

**Prototype**

```
Public Function TotalCount() As Long
```

#### Description

This method returns back the number of rows currently in a generic object. For example, if you query a database table, and the query returned 14 rows, you would expect TotalCount to return 14. If you then called on AddNew to add a row, it would return 15.

This method returns back the total number of records in the generic object, even if it is a child object. To return the number of records in the generic object related to the current row of the parent generic object, use the Count method.

**Returns**

The total number of rows in this generic.

**Example**

The following example queries the case table and the notes_log table. Then, for each case, it reports how many notes are related, and shows how many total rows are in each generic.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Query case and notes_log

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  var boNotes = FCSession.CreateGeneric();

  boNotes.TraverseFromParent(boCase, "case_notes2notes_log");

  boCase.Query();

  Response.Write ("Total Num of Cases: " + boCase.TotalCount());

  Response.Write ("Total Num of Notes: " + boNotes.TotalCount());

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

  MsgBox "Total Num of Cases: " & Trim$(Str$(boCase.TotalCount))

  MsgBox "Total Num of Notes: " & Trim$(Str$(boNotes.TotalCount))

  While boCase.EOF = False

    MsgBox "Case: " & boCase("id_number") & " " & "Num of notes: " & _

           Trim$(Str$(boNotes.Count))

    boCase.MoveNext

  Wend