### LogCREmail(LogCREmailSetup) Method

Setup object for API invocation.

Used to create a email log for a CR. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogCREmail( _
   ByVal _setupParam_ LogCREmailSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult LogCREmail( 
   LogCREmailSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the EmailLog.

#### Remarks

The date the email is logged can be set, as well as the user who logs the email. Additional fields on the log_email record can also be set as well as a time bomb (for the email_log), which allows notifications to be generated based on the event. In addition, the proper time_bomb can be optionally created that will cause rulemanager to send out the email.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~LogCREmail.md)  
[LogCREmailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.LogCREmailSetup.md)