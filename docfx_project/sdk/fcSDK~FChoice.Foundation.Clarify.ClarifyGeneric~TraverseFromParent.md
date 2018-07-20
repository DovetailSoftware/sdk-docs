### TraverseFromParent Method (ClarifyGeneric)

Makes this generic a child that is related to the specified parent generic through the specified relation

Syntax

```vbnet
' Declaration

Public Sub TraverseFromParent( _
   ByVal _parentGeneric_ As [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md), _
   ByVal _relationName_ As String _
) 

public void TraverseFromParent( 
   [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) _parentGeneric_,
   string _relationName_
)

#### Parameters

_parentGeneric_

_relationName_

Remarks

This generic will be related and linked to the parent. When the parent is queried or updated, this generic will be queried or updated as well.

To retrieve the related rows for a given row in either generic after a query, call the [RelatedRows](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow~RelatedRows.md) method on that row and pass in the opposite generic.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)