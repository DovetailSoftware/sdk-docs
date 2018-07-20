### QueryEmptyToNull Property (FCSessionData)

Session option that cues [Generics](fcSDK~FChoice.Foundation.FCGeneric.md) to convert filters on empty strings into filters on [Queries](fcSDK~FChoice.Foundation.FCGeneric~Query.md) that check Is NULL or IS NOT NULL.

Syntax

```vbnet
' Declaration
Public Property QueryEmptyToNull As Boolean

public bool QueryEmptyToNull {get; set;}

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCSessionData Class](fcSDK~FChoice.Foundation.FCSessionData.md)  
[FCSessionData Members](fcSDK~FChoice.Foundation.FCSessionData_members.md)