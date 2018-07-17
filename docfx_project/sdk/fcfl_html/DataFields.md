_DataFields_
------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

Public DataFields As String

**Description**

This property contains the column(s) that will be queried for this generic object when you query the database.

If you leave it blank, **FCFL** will assume that you want all fields/relations for the table, and will put "*" into the property. You may also put "*" into the property yourself if you want.

In general, you can query for all columns. But if your query returns a lot of rows, it may be useful to specify only those you need, to improve performance.

If you know that you only need certain columns, you may list them, separated by commas, in this property. If you plan to traverse to children objects (via an MTO or OTOP on this table), you should include that relation as one of the columns to retrieve. You may also use the IncludeRelations property to simplify the process.

The objid column is always retrieved - you do not need to specify it.

If you intend to create new rows in the generic object (with AddNew) and add them to the database, you should return all columns, as otherwise the insert will fail. You can also use the RequeryForInserts method if you only query for some columns.

**Example**

The following example sets up a database query, only returning the needed rows for display, and for traversing to the child object.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Query case and notes_log

  var boCase = FCSession.CreateGeneric();

  boCase.DataFields = "id_number, title, case_reporter2contact";

  boCase.SimpleQuery("case");

  var boContact = FCSession.CreateGeneric();

  boContact.TraverseFromParent(boCase, "case_reporter2contact");

  boCase.Query();

  // Loop through all cases

  // For each, print the case ID and contact name

  while (boCase.EOF != true)

  {

    Response.Write ("Case: " + boCase("id_number") + " Contact: " +

            boContact("first_name") + " " + boContact("last_name"));  

    // Now get the next case

    boCase.MoveNext();

  }

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Dim boContact As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.DataFields = "id_number, title, case_reporter2contact"

  Set boContact = fc_session.CreateGeneric

  boContact.TraverseFromParent boCase, "case_reporter2contact"

  boCase.Query

  While boCase.EOF = False

    MsgBox "Case: " & boCase("id_number") & " Contact: " & boContact("first_name") & _

           " " & boContact("last_name")

    boCase.MoveNext

  Wend