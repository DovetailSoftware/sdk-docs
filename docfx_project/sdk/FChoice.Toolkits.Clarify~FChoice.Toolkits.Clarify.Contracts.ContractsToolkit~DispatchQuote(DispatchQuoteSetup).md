### DispatchQuote(DispatchQuoteSetup) Method

Setup object for API invocation.

Dispatch the Quote to the specified queue. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DispatchQuote( _
   ByVal _setupParam_ DispatchQuoteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchQuote( 
   DispatchQuoteSetup _setupParam_
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~DispatchQuote.md)  
[DispatchQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.DispatchQuoteSetup.md)