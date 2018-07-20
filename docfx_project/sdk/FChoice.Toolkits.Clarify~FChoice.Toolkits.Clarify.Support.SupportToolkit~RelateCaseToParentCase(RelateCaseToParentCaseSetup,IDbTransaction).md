### RelateCaseToParentCase(RelateCaseToParentCaseSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Relates a Case to a specified parent Case. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function RelateCaseToParentCase( _
   ByVal _setupParam_ As [RelateCaseToParentCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RelateCaseToParentCaseSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) RelateCaseToParentCase( 
   [RelateCaseToParentCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RelateCaseToParentCaseSetup.md) _setupParam_,
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

The parent Case cannot be a descendent of the child Case.

Example

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RelateCaseToParentCase.md)