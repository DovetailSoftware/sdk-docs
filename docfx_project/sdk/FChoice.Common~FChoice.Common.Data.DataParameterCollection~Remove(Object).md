### Remove(Object) Method

The parameter to remove from the collection.

Removes a parameter from the collection.

Syntax

```vbnet
'Declaration

Public Overloads Sub Remove( _
   ByVal _value_ As Object _
) 
```

```csharp
public void Remove( 
   object _value_
)
```

#### Parameters

_value_

he parameter to remove from the collection.

Remarks

If the parameter passed in is not an [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm), is null (**Nothing** in Visual Basic), or does not already exist in the collection, nothing will happen and no error will be thrown. Otherwise, the parameter will be removed from the collection.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Remove.md)