### ReopenContract(String,String) Method

Contract Identifier.

Element from the 'Quote Status' application list. If not set, the default status for the Active Contract condition is used.

Causes the specified contract to be reopened. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ReopenContract( _
   ByVal _contractIDNum_ As String, _
   ByVal _status_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ReopenContract( 
   string _contractIDNum_,
   string _status_
)
```

#### Parameters

_contractIDNum_

Contract Identifier.

_status_

Element from the 'Quote Status' application list. If not set, the default status for the Active Contract condition is used.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

This is augmented functionality from base Clarify, as a contract cannot be re-opened via the Clarify GUI. The date/time of the reopen, the person performing the reopen, the WIPBIN to place the contract in, and the new status of the contract can be specified. The person who reopens the contract becomes the new owner.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ReopenContract.md)