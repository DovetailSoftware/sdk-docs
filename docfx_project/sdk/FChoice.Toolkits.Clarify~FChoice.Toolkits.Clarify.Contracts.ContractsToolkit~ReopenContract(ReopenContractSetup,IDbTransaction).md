     ReopenContract(ReopenContractSetup,IDbTransaction) Method                                                   

fcSDK Documentation

ReopenContract(ReopenContractSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Causes the specified contract to be reopened. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ReopenContract( _
   ByVal _setupParam_ As [ReopenContractSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ReopenContractSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ReopenContract( 
   [ReopenContractSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ReopenContractSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

This is augmented functionality from base Clarify, as a contract cannot be re-opened via the Clarify GUI. The date/time of the reopen, the person performing the reopen, the WIPBIN to place the contract in, and the new status of the contract can be specified. The person who reopens the contract becomes the new owner.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ReopenContract.md)