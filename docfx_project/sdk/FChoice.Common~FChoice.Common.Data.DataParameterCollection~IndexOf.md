﻿### IndexOf Method (DataParameterCollection)

The [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) whose index to retrieve.

Returns the index at which this object exists in the collection.

#### Syntax

```vbnet
'Declaration

Public Function IndexOf( _
   ByVal _value_ As Object _
) As Integer
```

```csharp
public int IndexOf( 
   object _value_
)
```

#### Parameters

_value_

The [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) whose index to retrieve.

#### Return Value

The zero-based index of the first occurrence of value within the entire DataParameterCollection, if found; otherwise, -1.

#### Remarks

The DataParameterCollection is searched forward starting at the first element and ending at the last element.  

This method performs a linear search; therefore, the average execution time is proportional to Count. That is, this method is an O(n) operation, where n is Count.

This method determines equality by calling [Object.Equals](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemObjectClassEqualsTopic.htm).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)