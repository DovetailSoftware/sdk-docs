### LogSubcasePhone(LogSubcasePhoneSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates a phone log against a Subcase. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function LogSubcasePhone( _
   ByVal _setupParam_ As [LogSubcasePhoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md)

public [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md) LogSubcasePhone( 
   [LogSubcasePhoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup.md) _setupParam_,
   IDbTransaction _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~IsCommitmentToCustomer.md) properties

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcasePhone.md)