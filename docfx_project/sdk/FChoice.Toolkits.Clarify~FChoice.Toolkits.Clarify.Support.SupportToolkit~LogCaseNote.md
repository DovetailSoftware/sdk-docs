     LogCaseNote Method                                                   

fcSDK Documentation

LogCaseNote Method

Creates a note log against a Case. This overload takes a set of required parameters for the API.

Creates a note log against a Case.

Overload List

| Overload | Description |
| --- | --- |
| [LogCaseNote(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseNote(String).md) | Creates a note log against a Case. This overload takes a set of required parameters for the API.   |
| [LogCaseNote(LogCaseNoteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseNote(LogCaseNoteSetup).md) | Creates a note log against a Case. This overload takes a setup object.   |
| [LogCaseNote(LogCaseNoteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseNote(LogCaseNoteSetup,IDbTransaction).md) | Creates a note log against a Case. This overload takes a setup object and a database transaction.   |

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~IsCommitmentToCustomer.md) properties.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[LogCaseNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup.md)