### RejectContract(RejectContractSetup) Method

Setup object for API invocation.

Reject the Contract from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function RejectContract( _
   ByVal _setupParam_ RejectContractSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult RejectContract( 
   RejectContractSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Contract must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~RejectContract.md)  
[RejectContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.RejectContractSetup.md)