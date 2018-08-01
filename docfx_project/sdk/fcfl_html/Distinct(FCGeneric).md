_Distinct(FCGeneric)_
---------------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public Distinct  As Boolean
```

#### Description

This property tells the generic object that it should perform a "distinct" query. That is, it should perform a "select distinct" for the data fields supplied.

It is required, for this property, that you supply the data fields that the object is to query. If you do not provide data fields, the Query method will throw an error. Distinct generic objects do **NOT** add the objid column to the output data fields.

You may use AppendFilters and AppendSorts to modify the query that **FCFL** will perform for the distinct generic.

Distinct generic objects, after they are queried, are read-only. If you attempt to write data to the generic, an error will be thrown. The following methods and properties are not allowed for distinct generics:

*  AddForUpdate
*  AddNew
*  Delete
*  DeleteAll
*  Duplicate
*  Fields Let
*  RelateById
*  RelateIntFldByID
*  RelateIntFldToRecord
*  RelateRecords
*  UnRelateAll
*  UnRelateRecordFromAll
*  UnRelateRecords
*  Update (Bulk)
*  Update (Generic)
*  UpdateAll (Bulk)
* · UpdateAll (Generic)

**Example**

The following example demonstrates setting the Distinct  property for a new object.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Set this generic to be a distinct one

  var boCase = FCSession.CreateGeneric("case");

  boCase.DataFields = "title, id_number";

  boCase.Distinct = true;

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery "case"

  boCase.DataFields = "title, id_number"

  boCase.Distinct = True