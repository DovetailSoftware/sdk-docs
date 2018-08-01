_db_type_
---------

**Object and Type**

Object  : FCApplication

Type     : Property

**Prototype**

```
Public db_type As String
```

#### Description

Contains the type of the database. It will be either "MSSQL" or "Oracle".

**Example**

The following example displays the type of database.

**JavaScript:**
```
<%
	var db_type;
	db_type = FCApp.db_type;
%>

Database Type = <%=db_type%>
```