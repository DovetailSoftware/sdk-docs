### UserName Property (UnlinkCRFromSolutionSetup)

User that unlinked the CR from the Solution. If not set, the session user is used.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property UserName As String
```

```csharp
[PropertyBitValueAttribute()]
public string UserName {get; set;}
```

#### Remarks

When this property is not specified. This API method will attempt to use the toolkit session's [UserName](fcSDK~FChoice.Foundation.FCSession~UserName.md). If the toolkit session was [created](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession(String,String,ClarifyLoginType).md) as a [Contact](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) session this property is required otherwise errors will result.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UnlinkCRFromSolutionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UnlinkCRFromSolutionSetup.md)  
[UnlinkCRFromSolutionSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UnlinkCRFromSolutionSetup_members.md)