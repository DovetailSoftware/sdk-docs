### ForwardQuote(ForwardQuoteSetup) Method

Setup object for API invocation.

Reject-forward the Quote from one queue to another. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ForwardQuote( _
   ByVal _setupParam_ ForwardQuoteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ForwardQuote( 
   ForwardQuoteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Quote must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ForwardQuote.md)  
[ForwardQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ForwardQuoteSetup.md)