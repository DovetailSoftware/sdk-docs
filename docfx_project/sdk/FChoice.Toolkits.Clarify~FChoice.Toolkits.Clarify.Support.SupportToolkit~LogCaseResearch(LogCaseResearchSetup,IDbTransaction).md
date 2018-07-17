     LogCaseResearch(LogCaseResearchSetup,IDbTransaction) Method                                                   

fcSDK Documentation

LogCaseResearch(LogCaseResearchSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates a research log against a Case. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogCaseResearch( _
   ByVal _setupParam_ As [LogCaseResearchSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [LogCaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult.md)

public [LogCaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult.md) LogCaseResearch( 
   [LogCaseResearchSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [LogCaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~IsCommitmentToCustomer.md) properties

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseResearch.md)