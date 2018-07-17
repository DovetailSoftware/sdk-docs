     InitializeStatusChange Event                                                   

fcSDK Documentation

InitializeStatusChange Event

Event fired during [Initialization](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md), relaying information about the current status of the initialization process.

Syntax

```vbnet
```csharp

'Declaration
 

Public Event InitializeStatusChange As [InitializeStatusChangeEventHandler](fcSDK~FChoice.Foundation.Clarify.InitializeStatusChangeEventHandler.md)

public event [InitializeStatusChangeEventHandler](fcSDK~FChoice.Foundation.Clarify.InitializeStatusChangeEventHandler.md) InitializeStatusChange

Remarks

Add an event handler to this event to receive feedback on where in the initialization process ClarifyApplication currently is. The [InitStatusChangeType](fcSDK~FChoice.Foundation.Clarify.InitStatusChangeType.md) enumeration contains the initialization states.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[InitStatusChangeType Enumeration](fcSDK~FChoice.Foundation.Clarify.InitStatusChangeType.md)