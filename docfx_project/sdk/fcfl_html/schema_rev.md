_schema_rev_
------------

**Object and Type**

Object  : FCApplication

Type     : Property

**Prototype**

```
Public schema_rev As Integer
```

#### Description

Contains the schema revision of the database as stored in adp_db_header.schema_rev.

**Example**

The following example displays the schema revision of the database.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

-

<%

var schema_rev;

schema_rev = FCApp.schema_rev;

%>

Schema Revision = <%=schema_rev%>