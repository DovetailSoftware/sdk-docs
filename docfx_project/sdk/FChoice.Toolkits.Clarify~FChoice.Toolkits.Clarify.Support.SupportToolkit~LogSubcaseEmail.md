### LogSubcaseEmail Method                                                   

fcSDK Documentation

LogSubcaseEmail Method

Creates an email log against a Subcase. This overload takes a set of required parameters for the API.

Creates an email log against a Subcase.

Overload List

| Overload | Description |
| --- | --- |
| [LogSubcaseEmail(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseEmail(String).md) | Creates an email log against a Subcase. This overload takes a set of required parameters for the API.   |
| [LogSubcaseEmail(LogSubcaseEmailSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseEmail(LogSubcaseEmailSetup).md) | Creates an email log against a Subcase. This overload takes a setup object.   |
| [LogSubcaseEmail(LogSubcaseEmailSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseEmail(LogSubcaseEmailSetup,IDbTransaction).md) | Creates an email log against a Subcase. This overload takes a setup object and a database transaction.   |

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~IsCommitmentToCustomer.md) properties. If a com_tmplte record with a title of "send_email_about_subcase" is found, it will be used to generate the email. If this template is not found, the email will be based on the "send_email_about_obj" template.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[LogSubcaseEmailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup.md)