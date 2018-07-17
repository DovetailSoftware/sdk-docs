     Add(String,Object,ParameterDirection) Method                                                   

Add(String,Object,ParameterDirection) Method

The name of the parameter to add (without the database-specific bind variable prefix such as @ for Microsoft SQL Server or : for Oracle)

The value of the parameter that will be passed to the database as part of the query

Specifies a direction for the parameter. By default this is [ParameterDirection.Input](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataParameterDirectionClassTopic.htm).

Adds a parameter to this collection for passing to the database and in replacing parameters in the SQL statement, using a specific parameter direction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function Add( _
   ByVal _name_ As String, _
   ByVal _value_ As [Object](#), _
   ByVal _direction_ As [ParameterDirection](#) _
) As [Integer](#)

public [int](#) Add( 
   string _name_,
   [object](#) _value_,
   [ParameterDirection](#) _direction_
)

#### Parameters

_name_

The name of the parameter to add (without the database-specific bind variable prefix such as @ for Microsoft SQL Server or : for Oracle)

_value_

The value of the parameter that will be passed to the database as part of the query

_direction_

Specifies a direction for the parameter. By default this is [ParameterDirection.Input](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataParameterDirectionClassTopic.htm).

#### Return Value

The index in the collection at which the new parameters was added.

Remarks

This method will create a new instance of an [IDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidataparameterclasstopic.htm) of the underlying type that matches the data provider specified by the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md), or the one passed into the constructor. For example, if the data provider is Microsoft SQL Server, this method will add a SqlParameter to the collection.

The **_name_** parameter should be a simple name without any database-specific prefix such as "@" for SQL Server or ":" for Oracle. The [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) will take care of adding the specific prefix.

The rules for the **_value_** parameter are dictated by the underlying data provider type. In general, basic types will be supported without problems, but database-specific values such as large binary arrays or text fields might require extra preparation. You can access the parameter collection via the [Parameters](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Parameters.md) property to perform database-specific work or add a custom parameter to the collection. Consult the database vendor's documentation or the .NET Framework SDK documentation for these special considerations.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Add.md)