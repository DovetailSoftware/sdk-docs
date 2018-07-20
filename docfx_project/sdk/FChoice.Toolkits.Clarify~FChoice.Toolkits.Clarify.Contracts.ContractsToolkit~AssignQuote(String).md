### AssignQuote(String) Method

Quote Identifier.

Assign the Quote to a new user. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function AssignQuote( _
   ByVal _quoteIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AssignQuote( 
   string _quoteIDNum_
)

#### Parameters

_quoteIDNum_

Quote Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Quote must be in the Open condition, and the user assigning the Quote does not have to be the owner of the Quote. In base Clarify, the assigner of a Quote must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Quote in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AssignQuote.md)