### Contains(Object) Method

The value of the primary key to test for.

Test if a single [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) is already in the collection.

Syntax

```vbnet
'Declaration

Public Overloads Function Contains( _
   ByVal _key_ As Object _
) As Boolean
```

```csharp
public bool Contains( 
   object _key_
)
```

#### Parameters

_key_

The value of the primary key to test for.

Remarks

The implementation of Contains is delegated to DataRowCollection's [Contains](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatadatarowcollectionclasscontainstopic.htm).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[GenericDataRowCollection Class](fcSDK~FChoice.Foundation.GenericDataRowCollection.md)  
[GenericDataRowCollection Members](fcSDK~FChoice.Foundation.GenericDataRowCollection_members.md)  
[Overload List](fcSDK~FChoice.Foundation.GenericDataRowCollection~Contains.md)