     LogCaseResearch Method                                                   

fcSDK Documentation

LogCaseResearch Method

Creates a research log against a Case. This overload takes a set of required parameters for the API.

Creates a research log against a Case.

Overload List

| Overload | Description |
| --- | --- |
| [LogCaseResearch(String,TimeSpan)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseResearch(String,TimeSpan).md) | Creates a research log against a Case. This overload takes a set of required parameters for the API.   |
| [LogCaseResearch(LogCaseResearchSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseResearch(LogCaseResearchSetup).md) | Creates a research log against a Case. This overload takes a setup object.   |
| [LogCaseResearch(LogCaseResearchSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseResearch(LogCaseResearchSetup,IDbTransaction).md) | Creates a research log against a Case. This overload takes a setup object and a database transaction.   |

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[LogCaseResearchSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup.md)