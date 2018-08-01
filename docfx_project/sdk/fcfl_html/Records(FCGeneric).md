_Records(FCGeneric)_
--------------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public Records As ADODB.RecordSet
```

#### Description

This property contains the data records for the generic object. The records are stored in an ADODB.Recordset object.

The records for a generic query are created in one of two ways:

* 1. A Query is performed on the generic object, thus retrieving data from the database.
* 2. The AddNew (or AddForUpdate) method is called, adding a record at the end of the Records object.

In almost all cases, you do not need to ever worry about creating a Records object for a generic object. When you create the generic object, the Records object is created for you automatically.

Data is usually read and written from the Records object using high-level methods provided for the generic object. Some of these methods are: Fields (which allows you to set/get fields), RelateRecords (and similar relate methods), and UnRelate (which allows you to unrelate records from one another).

While it is recommended that you use the methods/properties listed in the previous paragraph, you can write or read the data in the Records property directly, as seen in the example below.

**Note**: For more information about ADODB Recordsets, please visit the Microsoft website at: [http://www.microsoft.com/](http://www.microsoft.com/).

**Example**

The following example demonstrates querying the case table, and setting the _alt_address_ field for each object returned, using the _Records_ property.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Query for all cases

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  boCase.Query();

  while (boCase.EOF != true)

  {

    boCase.Records("alt_address") = "An alt address";

    boCase.MoveNext();

  }

  boCase.UpdateAll();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery ("case")

  boCase.Query

  While boCase.EOF = False

    boCase.records("alt_address") = "Another alt address"

    boCase.MoveNext

  Wend

  boCase.UpdateAll