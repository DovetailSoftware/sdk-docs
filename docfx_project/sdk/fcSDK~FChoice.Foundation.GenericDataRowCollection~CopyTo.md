### CopyTo Method (GenericDataRowCollection)

The one-dimensional [Array](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatainternaldatacollectionbaseclasscopytotopic.htm) to copy the current object's elements into.

The destination [Array](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatainternaldatacollectionbaseclasscopytotopic.htm) index to start copying into.

Copies all the elements of the current GenericDataRowCollection to a one-dimensional [Array](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemarrayclasstopic.htm), starting at the specified index.

#### Syntax

```vbnet
'Declaration

Public Sub CopyTo( _
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

The one-dimensional [Array](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatainternaldatacollectionbaseclasscopytotopic.htm) to copy the current object's elements into.

_index_

The destination [Array](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatainternaldatacollectionbaseclasscopytotopic.htm) index to start copying into.

#### Remarks

The implementation of CopyTo is delegated to DataRowCollection's [CopyTo](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatainternaldatacollectionbaseclasscopytotopic.htm)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[GenericDataRowCollection Class](fcSDK~FChoice.Foundation.GenericDataRowCollection.md)  
[GenericDataRowCollection Members](fcSDK~FChoice.Foundation.GenericDataRowCollection_members.md)