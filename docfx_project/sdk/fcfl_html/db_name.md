### db_name

**Object and Type**

Object  : FCApplication

Type     : Property

**Prototype**

```
Public db_name As String
```

#### Description

Contains the name of the database as stored in adp_db_header.db_name.

**Example**

The following example displays the name of the database.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

-

<%

var db_name;

db_name = FCApp.db_name;

%>

Database Name = <%=db_name%>