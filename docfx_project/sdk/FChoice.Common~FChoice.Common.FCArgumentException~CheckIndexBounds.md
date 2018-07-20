### CheckIndexBounds Method

The unique error ID to use if an exception needs to be thrown.

The name of the parameter that contains the index value to check.

The actual index value to verify.

The current total of elements in the collection against which to verify the index value.

Used to verify that an indexer property get on a collection object contains an index that is within the bounds of collection.

Syntax

```vbnet
' Declaration

Public Shared Sub CheckIndexBounds( _
   ByVal _errorId_ As Integer, _
   ByVal _paramName_ As String, _
   ByVal _index_ As Integer, _
   ByVal _maxBound_ As Integer _
) 

public static void CheckIndexBounds( 
   int _errorId_,
   string _paramName_,
   int _index_,
   int _maxBound_
)

#### Parameters

_errorId_

The unique error ID to use if an exception needs to be thrown.

_paramName_

The name of the parameter that contains the index value to check.

_index_

The actual index value to verify.

_maxBound_

The current total of elements in the collection against which to verify the index value.

Exceptions

| Exception | Description |
| --- | --- |
| [FCArgumentException](FChoice.Common~FChoice.Common.FCArgumentException.md) | index was greater than or equal to maxBound. |

Remarks

Index is expected to be a zero-based index value into the collection. If index is greater than or equal to maxBound, an FCArgumentException will be thrown using the error ID supplied.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCArgumentException Class](FChoice.Common~FChoice.Common.FCArgumentException.md)  
[FCArgumentException Members](FChoice.Common~FChoice.Common.FCArgumentException_members.md)