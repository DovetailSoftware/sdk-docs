### ForwardCase(String,String) Method

Case Identifier.

The new queue into which the Case is to be forwarded.

Reject-forward the Case from one queue to another. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ForwardCase( _
   ByVal _caseIDNum_ As String, _
   ByVal _newQueue_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ForwardCase( 
   string _caseIDNum_,
   string _newQueue_
)
```

#### Parameters

_caseIDNum_

Case Identifier.

_newQueue_

The new queue into which the Case is to be forwarded.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Case must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ForwardCase.md)