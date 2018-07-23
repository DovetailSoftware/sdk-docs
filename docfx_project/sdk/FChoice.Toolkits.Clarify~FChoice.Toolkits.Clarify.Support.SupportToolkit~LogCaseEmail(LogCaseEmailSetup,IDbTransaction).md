### LogCaseEmail(LogCaseEmailSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates an email log against a Case. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function LogCaseEmail( _
   ByVal _setupParam_ As [LogCaseEmailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [LogCaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult.md)

public [LogCaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult.md) LogCaseEmail( 
   [LogCaseEmailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [LogCaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~IsCommitmentToCustomer.md) properties

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmail.md)