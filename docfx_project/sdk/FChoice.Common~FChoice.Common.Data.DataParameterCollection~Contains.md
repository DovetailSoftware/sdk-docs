### Contains Method (DataParameterCollection)

The [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) to search for.

Determines whether or not this collection contains the specified parameter.

#### Syntax

```vbnet
'Declaration

Public Function Contains( _
   ByVal _value_ As Object _
) As Boolean
```

```csharp
public bool Contains( 
   object _value_
)
```

#### Parameters

_value_

The [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) to search for.

#### Return Value

Whether or not this collection contains the specified parameter.

#### Remarks

If the value specified is not an instance of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm), or is null (**Nothing** in Visual Basic), it will be ignored and the result will be false.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)