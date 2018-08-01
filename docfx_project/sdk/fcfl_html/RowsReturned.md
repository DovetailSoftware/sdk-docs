_RowsReturned_
--------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public RowsReturned As Long
```

#### Description

If you query the database, and a Generic object has a _RowLimit_ associated with it, and the query returns more rows than the Generic allows, the number of rows that the query wanted to return is stored in this property.

If a query does **not** exceed the limit (or if there is no limit), this property will be set to -1. In this case, the number of rows returned can be found with the _Count_ property of the generic.

**Note:** If a Generic's _RowLimit_ is exceeded, the Generic contains zero objects (the query is not performed).

**Note:** The query will throw an error (or won't) based on the _ErrorOnQueryTooBig_ property.

**Example**

The following example queries the case table with a _RowLimit_. If too many rows are returned, the number of rows that should have been returned is printed out.

**Visual Basic:**

The code in this example is written in Visual Basic.

  Set case_rec = fc_session.CreateGeneric

  case_rec.SimpleQuery "case"

  case_rec.rowLimit = 100

  On Error GoTo too_many

  case_rec.Query

  On Error GoTo 0

  ' Rest of code here

  Exit Sub

too_many:

  Err = 0

  MsgBox Err.Description

  Resume Next