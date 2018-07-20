### ChangeCaseStatus(String) Method

Case Identifier.

Changes the status of a Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function ChangeCaseStatus( _
   ByVal _caseIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeCaseStatus( 
   string _caseIDNum_
)

#### Parameters

_caseIDNum_

Case Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Case may be opened or closed, but the status selected must be valid for the current condition. In other words, you cannot assign a Closed condition status to a Case that is currently Open.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseStatus.md)