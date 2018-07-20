### InitializeStatusChange Event

Event fired during [Initialization](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md), relaying information about the current status of the initialization process.

Syntax

```vbnet
' Declaration

Public Event InitializeStatusChange As [InitializeStatusChangeEventHandler](fcSDK~FChoice.Foundation.Clarify.InitializeStatusChangeEventHandler.md)

public event [InitializeStatusChangeEventHandler](fcSDK~FChoice.Foundation.Clarify.InitializeStatusChangeEventHandler.md) InitializeStatusChange

Remarks

Add an event handler to this event to receive feedback on where in the initialization process ClarifyApplication currently is. The [InitStatusChangeType](fcSDK~FChoice.Foundation.Clarify.InitStatusChangeType.md) enumeration contains the initialization states.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[InitStatusChangeType Enumeration](fcSDK~FChoice.Foundation.Clarify.InitStatusChangeType.md)