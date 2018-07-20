### UpdateCase(UpdateCaseSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Updates an existing Case. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function UpdateCase( _
   ByVal _setupParam_ As [UpdateCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateCase( 
   [UpdateCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup.md) _setupParam_,
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

If the [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup~UserName.md) is not the current owner of the Case and this flag is **true** then the Update will not happen.

Example

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~UpdateCase.md)