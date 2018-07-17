     LogCREmail(String) Method                                                   

fcSDK Documentation

LogCREmail(String) Method

Identifier of the CR being logged.

Used to create a email log for a CR. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogCREmail( _
   ByVal _crIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogCREmail( 
   string _crIDNum_
)

#### Parameters

_crIDNum_

Identifier of the CR being logged.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the EmailLog.

Remarks

The date the email is logged can be set, as well as the user who logs the email. Additional fields on the log_email record can also be set as well as a time bomb (for the email_log), which allows notifications to be generated based on the event. In addition, the proper time_bomb can be optionally created that will cause rulemanager to send out the email.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~LogCREmail.md)