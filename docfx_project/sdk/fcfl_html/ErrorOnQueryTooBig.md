_ErrorOnQueryTooBig_
--------------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public ErrorOnQueryTooBig As Boolean
```

#### Description

If you query the database, and a Generic object has a _RowLimit_ associated with it, and the query returns more rows than the Generic allows, this property controls the behavior of **FCFL**. If the property is set to _True_ (the default), then **FCFL** will throw an error.

In some cases, however, the Generic's query will be part of a bulk, and you want the other queries to complete. In this situation you should set the property to _False_. This will cause **FCFL** to **not** throw an error. The _RowsReturned_ property will be filled in with the number of rows that the query wants to return.

**Note:** If the query that exceeds a _RowLimit_ has children queries, those children queries will not be queried against the database.

**Example**

The following example queries the case table with a _RowLimit_. If too many rows are returned, the number of rows that should have been returned is printed out because the _ErrorOnQueryTooBig_ property is set to _False_.

**Visual Basic:**

The code in this example is written in Visual Basic.

  Set case_rec = fc_session.CreateGeneric

  case_rec.SimpleQuery "case"

  case_rec.rowLimit = 100

  case_rec.ErrorOnQueryTooBig = False

  case_rec.Query

  If case_rec.RowsReturned <> -1 Then

     MsgBox "The query returned too many rows. It returned " & _

      Trim$(Str$(case_rec.RowsReturned)) & " rows."

  End If