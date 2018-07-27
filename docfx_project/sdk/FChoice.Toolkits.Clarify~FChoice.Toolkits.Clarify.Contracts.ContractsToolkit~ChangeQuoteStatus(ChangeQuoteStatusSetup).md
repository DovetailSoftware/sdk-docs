### ChangeQuoteStatus(ChangeQuoteStatusSetup) Method

Setup object for API invocation.

Causes the specified quote to have its status changed. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangeQuoteStatus( _
   ByVal _setupParam_ ChangeQuoteStatusSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeQuoteStatus( 
   ChangeQuoteStatusSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The quote may be in any valid condition, but the status selected MUST be valid for the current condition. In other words, you cannot assign an Active Contract condition status to a quote that is currently in Quote condition.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ChangeQuoteStatus.md)  
[ChangeQuoteStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ChangeQuoteStatusSetup.md)