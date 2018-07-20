### Item Property (GenericDataRowCollection)

The zero-based index of the row to return.

Gets the row at the specified index.

\[C#\] In C#, this property is the indexer for the **GenericDataRowCollection** class.

Syntax

```vbnet
' Declaration
Public ReadOnly Default Property Item( _
   ByVal _index_ As Integer _
) As [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md)

public [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) this\[ 
   int _index_
\]; {get;}

#### Parameters

_index_

The zero-based index of the row to return.

#### Property Value

The specified [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md).

Remarks

Use the [Contains](fcSDK~FChoice.Foundation.GenericDataRowCollection~Contains.md) method to determine if a given value exists in the key column of a row.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[GenericDataRowCollection Class](fcSDK~FChoice.Foundation.GenericDataRowCollection.md)  
[GenericDataRowCollection Members](fcSDK~FChoice.Foundation.GenericDataRowCollection_members.md)