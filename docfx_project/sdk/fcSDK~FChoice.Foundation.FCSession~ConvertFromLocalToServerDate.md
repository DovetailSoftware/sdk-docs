### ConvertFromLocalToServerDate Method

date to convert

Converts a DateTime from the [session timezone](fcSDK~FChoice.Foundation.FCSession~LocalTimeZone.md) to the [server timezone](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ServerTimeZone.md).

#### Syntax

```vbnet
'Declaration

Public Overridable Function ConvertFromLocalToServerDate( _
   ByVal _date_ As Date _
) As Date
```

```csharp
public virtual DateTime ConvertFromLocalToServerDate( 
   DateTime _date_
)
```

#### Parameters

_date_

date to convert

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)