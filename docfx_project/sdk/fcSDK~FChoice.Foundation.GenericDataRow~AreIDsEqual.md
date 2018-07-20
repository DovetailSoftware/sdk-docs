### AreIDsEqual Method

Id of the first object being compared.

Id of the second object being compared.

Used to compare the [UniqueIDs](fcSDK~FChoice.Foundation.GenericDataRow~UniqueId.md) of two GenericDataRows.

Syntax

```vbnet
' Declaration
Public Shared Function AreIDsEqual( _
   ByVal _id1_ As Object, _
   ByVal _id2_ As Object _
) As Boolean

public static bool AreIDsEqual( 
   object _id1_,
   object _id2_
)

#### Parameters

_id1_

Id of the first object being compared.

_id2_

Id of the second object being compared.

#### Return Value

The result indicates if the two Unique Identifies are the same.

Remarks

In the Foundation namespace we do not know how the Unique Identifiers of a **GenericDataRow** are implemented. Use this method whenever comparing GenericDataRows in the Foundation namespace.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)