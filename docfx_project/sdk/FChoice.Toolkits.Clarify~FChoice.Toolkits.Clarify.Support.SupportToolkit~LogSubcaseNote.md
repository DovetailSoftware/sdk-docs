     LogSubcaseNote Method                                                   

fcSDK Documentation

LogSubcaseNote Method

Creates a note log against a Subcase. This overload takes a set of required parameters for the API.

Creates a note log against a Subcase.

Overload List

| Overload | Description |
| --- | --- |
| [LogSubcaseNote(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseNote(String).md) | Creates a note log against a Subcase. This overload takes a set of required parameters for the API.   |
| [LogSubcaseNote(LogSubcaseNoteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseNote(LogSubcaseNoteSetup).md) | Creates a note log against a Subcase. This overload takes a setup object.   |
| [LogSubcaseNote(LogSubcaseNoteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseNote(LogSubcaseNoteSetup,IDbTransaction).md) | Creates a note log against a Subcase. This overload takes a setup object and a database transaction.   |

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[LogSubcaseNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup.md)