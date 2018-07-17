     LogCasePhone Method                                                   

fcSDK Documentation

LogCasePhone Method

Creates a phone log against a Case. This overload takes a set of required parameters for the API.

Creates a phone log against a Case.

Overload List

| Overload | Description |
| --- | --- |
| [LogCasePhone(String,String,String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCasePhone(String,String,String,String).md) | Creates a phone log against a Case. This overload takes a set of required parameters for the API.   |
| [LogCasePhone(LogCasePhoneSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCasePhone(LogCasePhoneSetup).md) | Creates a phone log against a Case. This overload takes a setup object.   |
| [LogCasePhone(LogCasePhoneSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCasePhone(LogCasePhoneSetup,IDbTransaction).md) | Creates a phone log against a Case. This overload takes a setup object and a database transaction.   |

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~IsCommitmentToCustomer.md) properties.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[LogCasePhoneSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup.md)