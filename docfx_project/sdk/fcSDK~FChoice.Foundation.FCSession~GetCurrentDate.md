### GetCurrentDate Method (FCSession)

Retrieves the DateTime of the CRM database.

#### Syntax

```vbnet
'Declaration

Public Overridable Function GetCurrentDate() As Date
```

```csharp
public virtual DateTime GetCurrentDate()
```

#### Return Value

Current DateTime of the CRM database.

#### Remarks

When [ConvertTimeZone](fcSDK~FChoice.Foundation.FCSession~ConvertTimeZone.md) is enabled the return value will be converted to the [LocalTimeZone](fcSDK~FChoice.Foundation.FCSession~LocalTimeZone.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)