### MaxRecords

---

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

Public Property Get MaxRecords() As Long

Public Property Let MaxRecords(ByVal new_max As Long)

**Description**

Indicates the maximum number of records to return from a query. Default is zero (no limit). This property simply sets the ADO MaxRecords property on the underlying ADO recordset. One issue to be aware of is that when you complete the query (and if it returns the maximum number of rows allowed), you do not know if there were additional rows that SQL wanted to return, or if you received them all.

#### Related Topics

[RowLimit](RowLimit(FCGeneric).md) Property

**Example**

The following example limits the number of records returned.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim case_rec As FCGeneric

Set case_rec = fc_session.CreateGeneric("case")

case_rec.MaxRecords = 300