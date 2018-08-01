_Query(FCBulk)_
---------------

**Object and Type**

Object  : FCBulk

Type     : Method

**Prototype**

```
Public Sub Query()
```

#### Description

This method causes each generic in the bulk to query the database (based on the DBObjectName, the Filter, the SortFields, and the DataFields you have set for this object) to retrieve records. The query retrieves 0 or more rows for each, and places them in the recordset for each generic object.

If you are using child objects (traversing from one generic object to another), only the "top-level" generics will be queried by the bulk. The children objects will also be queried, but as part of the parent query.

If you wish to query just one generic object, use the _Query_ method on the generic object directly.

**Note**: If you perform a query on the generic object, the recordset for the records is then "Open." You may **NOT** perform another query on the same generic objects unless you close the recordset first. To do that, call on the following code (assume the name of the generic object is boCase):

boCase.Records.Close();

**Note**: For ADO-savvy users, the recordset for the generic object is disconnected from the database as a final part of the query.

**Error Codes**

There are no error codes for this method. However, it does call on FCGeneric.Query, which can generate errors. Please see that method's documentation for more information.

**Example**

The following example queries several objects, placed in a single bulk object.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Get some cases, sites, and parts via a bulk

  var boCase = FCSession.CreateGeneric();

  boCase.SimpleQuery("case");

  boCase.AppendFilter("title", "contains", "a");

  var boSite = FCSession.CreateGeneric();

  boSite.SimpleQuery("site");

  boSite.AppendFilter("name", "like", "P%");

  var boPart = FCSession.CreateGeneric();

  boPart.SimpleQuery("part_num");

  boCase.Bulk.Query(); 

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim boCase As FCGeneric

  Dim boSite As FCGeneric

  Dim boPart As FCGeneric

  Set boCase = fc_session.CreateGeneric

  boCase.SimpleQuery ("case")

  boCase.AppendFilter "title", "contains", "a"

  Set boSite = fc_session.CreateGeneric

  boSite.SimpleQuery ("site")

  boSite.AppendFilter "name", "like", "P%"

  Set boPart = fc_session.CreateGeneric

  boPart.SimpleQuery ("part_num")

  boCase.Bulk.Query