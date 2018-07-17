     Add(String,IDbDataParameter) Method                                                   

Add(String,IDbDataParameter) Method

The name of the parameter to add (without the database-specific bind variable prefix such as @ for Microsoft SQL Server or : for Oracle)

An instance of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm) to add to this collection.

Adds a parameter to this collection for passing to the database and in replacing parameters in the SQL statement.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function Add( _
   ByVal _name_ As String, _
   ByVal _param_ As [IDbDataParameter](#) _
) As [Integer](#)

public [int](#) Add( 
   string _name_,
   [IDbDataParameter](#) _param_
)

#### Parameters

_name_

The name of the parameter to add (without the database-specific bind variable prefix such as @ for Microsoft SQL Server or : for Oracle)

_param_

An instance of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm) to add to this collection.

Remarks

The **_name_** parameter should be a simple name without any database-specific prefix such as "@" for SQL Server or ":" for Oracle. The SqlHelper will take care of adding the specific prefix.

**NOTE:** The instance of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm) to add must match the same underlying type of parameter as that provided by the [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) associated with this collection (either the default provider or the one passed into the constructor for this collection). If they do not match, an error will be thrown when the query is executed.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Add.md)