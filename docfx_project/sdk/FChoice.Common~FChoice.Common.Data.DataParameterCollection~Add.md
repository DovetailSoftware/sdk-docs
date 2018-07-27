### Add Method (DataParameterCollection)

Adds a parameter to this collection for use as a bind variable in the SQL statement.

Adds a parameter to this collection for use as a bind variable in the SQL statement.

#### Overload List

| Overload | Description |
| --- | --- |
| [Add(String,Object)](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Add(String,Object).md) | Adds a parameter to this collection for use as a bind variable in the SQL statement.   |
| [Add(String,Object,ParameterDirection)](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Add(String,Object,ParameterDirection).md) | Adds a parameter to this collection for passing to the database and in replacing parameters in the SQL statement, using a specific parameter direction.   |
| [Add(String,Object,IDbDataParameter)](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Add(String,Object,IDbDataParameter).md) |   |
| [Add(String,IDbDataParameter)](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Add(String,IDbDataParameter).md) | Adds a parameter to this collection for passing to the database and in replacing parameters in the SQL statement.   |

#### Remarks

The parameters added to this collection are stored in order and are used by [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) to replace the parameter tokens in the SQL statement in the order in which they appear.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)