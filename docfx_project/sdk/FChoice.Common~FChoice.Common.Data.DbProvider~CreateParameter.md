### CreateParameter Method (DbProvider)

The name of the parameter to add (without the database-specific bind variable prefix such as @ for Microsoft SQL Server or : for Oracle)

The value of the parameter that will be passed to the database as part of the query

Creates a new IDbDataParameter of the specific underlying type for this database provider type (i.e. SqlHelper for MSSQL, etc)

Syntax

```vbnet
'Declaration

Public MustOverride Function CreateParameter( _
   ByVal _name_ As String, _
   ByVal _value_ As Object _
) As IDbDataParameter
```

```csharp
public abstract IDbDataParameter CreateParameter( 
   string _name_,
   object _value_
)
```

#### Parameters

_name_

The name of the parameter to add (without the database-specific bind variable prefix such as @ for Microsoft SQL Server or : for Oracle)

_value_

The value of the parameter that will be passed to the database as part of the query

#### Return Value

An IDbDataParameter instance which can be added to a parameter collection for a query

Remarks

See DataParameterCollection for more information on how to use data parameters.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)