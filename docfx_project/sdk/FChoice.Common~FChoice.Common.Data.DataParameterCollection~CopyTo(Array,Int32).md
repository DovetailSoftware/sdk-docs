### CopyTo(Array,Int32) Method

The array to copy the parameters into

The index in the array at which to start copying parameters

Copies the parameters in this collection to the specified array.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Sub CopyTo( _
   ByVal _array_ As Array, _
   ByVal _index_ As Integer _
) 
```

```csharp
public void CopyTo( 
   Array _array_,
   int _index_
)
```

#### Parameters

_array_

The array to copy the parameters into

_index_

The index in the array at which to start copying parameters

#### Remarks

The specified array's element type must be compatible with [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm).

This method uses [Array.Copy](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemArrayClassCopyTopic.htm) to copy the elements.

The elements are copied to the array in the same order in which they exist in this collection.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~CopyTo.md)