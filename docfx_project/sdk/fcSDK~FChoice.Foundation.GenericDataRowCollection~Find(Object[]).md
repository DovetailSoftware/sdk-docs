### Find(Object\[\]) Method

An array of primary key values to find. The type of the array is Object.

Gets the row containing the specified primary key values.

#### Syntax

```vbnet
'Declaration

Public Overloads Function Find( _
   ByVal _keys_() As Object _
) As GenericDataRow
```

```csharp
public GenericDataRow Find( 
   object\[\] _keys_
)
```

#### Parameters

_keys_

An array of primary key values to find. The type of the array is Object.

#### Remarks

The implementation of Find is delegated to DataRowCollection's [Find](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatadatarowcollectionclassfindtopic2.htm).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[GenericDataRowCollection Class](fcSDK~FChoice.Foundation.GenericDataRowCollection.md)  
[GenericDataRowCollection Members](fcSDK~FChoice.Foundation.GenericDataRowCollection_members.md)  
[Overload List](fcSDK~FChoice.Foundation.GenericDataRowCollection~Find.md)