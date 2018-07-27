### LogCaseEmail Method

Creates an email log against a Case. This overload takes a set of required parameters for the API.

Creates an email log against a Case.

#### Overload List

| Overload | Description |
| --- | --- |
| [LogCaseEmail(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmail(String).md) | Creates an email log against a Case. This overload takes a set of required parameters for the API.   |
| [LogCaseEmail(LogCaseEmailSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmail(LogCaseEmailSetup).md) | Creates an email log against a Case. This overload takes a setup object.   |
| [LogCaseEmail(LogCaseEmailSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmail(LogCaseEmailSetup,IDbTransaction).md) | Creates an email log against a Case. This overload takes a setup object and a database transaction.   |

#### Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~IsCommitmentToCustomer.md) properties. If a com_tmplte record with a title of "send_email_about_case" is found, it will be used to generate the email. If this template is not found, the email will be based on the "send_email_about_obj" template.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[LogCaseEmailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup.md)