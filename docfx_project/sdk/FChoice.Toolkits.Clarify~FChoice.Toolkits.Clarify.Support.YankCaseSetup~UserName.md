### UserName Property (YankCaseSetup)

The user who has yanked the Case. If not set, the Toolkit session user is used.

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

[YankCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.YankCaseSetup.md)  
[YankCaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.YankCaseSetup_members.md)