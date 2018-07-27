### Item(String) Property

The name of the parameter whose value to get or set.

Gets or sets the [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) associated with the specific name in the collection.

#### Syntax

```vbnet
'Declaration

Public Overloads ReadOnly Property Item( _
   ByVal _name_ As String _
) As IDbDataParameter
```

```csharp
public IDbDataParameter Item( 
   string _name_
) {get;}
```

#### Parameters

_name_

The name of the parameter whose value to get or set.

#### Property Value

The [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) associated with the specific name.

#### Remarks

The **_name_** argument is the natural name of the parameter. That is, it does not have any data provider-specific prefixes such as "@" for Microsoft SQL Server, or ":" for Oracle.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Item.md)