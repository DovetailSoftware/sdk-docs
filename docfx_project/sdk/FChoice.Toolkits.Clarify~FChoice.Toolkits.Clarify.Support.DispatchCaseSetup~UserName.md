### UserName Property (DispatchCaseSetup)

The user who has dispatched the Case. If not set, the Toolkit session user is used.

#### Syntax

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

[DispatchCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchCaseSetup.md)  
[DispatchCaseSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchCaseSetup_members.md)