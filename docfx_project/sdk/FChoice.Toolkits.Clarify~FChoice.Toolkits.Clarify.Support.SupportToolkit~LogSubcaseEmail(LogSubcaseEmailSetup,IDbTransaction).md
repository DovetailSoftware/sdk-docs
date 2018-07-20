### LogSubcaseEmail(LogSubcaseEmailSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates an email log against a Subcase. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function LogSubcaseEmail( _
   ByVal _setupParam_ As [LogSubcaseEmailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md)

public [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md) LogSubcaseEmail( 
   [LogSubcaseEmailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~IsCommitmentToCustomer.md) properties

Example

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseEmail.md)