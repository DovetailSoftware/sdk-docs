### CreateContract(String) Method

Used to create a new contract.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateContract( _
   ByVal _title_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateContract(
   string _title_
)
```

#### Parameters

_title_

The title of the Contract.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Contract.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Contract.

#### Remarks

Each contract requires a unique, valid title. Everything else is optional. You may specify either an account or contact for a contract (or neither), you may specify a contract ID or let the API auto-generate the contract ID for you. You may specify the user who created the contract as well as the contract’s administrator, and you may specify additional fields. You may have a creation time bomb generated (for notifications). The objid of the contract created is returned. You may also specify a bill-to and ship-to site. These sites will be related to the default schedule. If empty, no site is related. If you do not wish to associate an account or contact against the contract, leave the account and contact parameters empty. You may also initially dispatch the contract. If you specify a queue name, the contract will be dispatched to that queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContract.md)
