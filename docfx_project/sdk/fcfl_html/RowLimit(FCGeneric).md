_RowLimit(FCGeneric)_
---------------------

**Object and Type**

Object  : FCGeneric

Type     : Property

**Prototype**

```
Public RowLimit As Integer
```

#### Description

This property allows you to set the maximum number of rows that the generic can return, when it is queried. If this property is set to 0, no limit will be applied.

If a query would return more rows the _RowLimit_ property would allow, the query returns **NO** rows, and the number of rows that would have been returned is filled into the _RowsReturned_ property.

**Note:** This property is affected by the _ErrorOnQueryTooBig_ property. Please see that property for more information.

**Example**

The following example demonstrates setting and using the _RowLimit_ property. The example allows you to query no more than 300 cases.

**JavaScript:**
```
// Set the session row limit, and create a generic that will share
// the limit
<%
var boCase = FCSession.CreateGeneric();
boCase.SimpleQuery("case");
boCase.RowLimit = 300;
boCase.Query();
%>
```