### SendEmail Property (LogCaseEmailSetup)

Specifies if a timebomb be added to Clarify that will cause Rule Manager (if running) to send the email.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property SendEmail As Boolean
```

```csharp
[PropertyBitValueAttribute()]
public bool SendEmail {get; set;}
```

#### Remarks

If set to True, the API will add a row to Clarify that will cause the rule manager (which must be running) to send the email. This is just like logging it via the Log Email GUI in Clarify. The downside of this is that rulemanager sends the email from the server, which means that the recipient(s) cannot hit "reply", and have the email come back to you.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogCaseEmailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup.md)  
[LogCaseEmailSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup_members.md)