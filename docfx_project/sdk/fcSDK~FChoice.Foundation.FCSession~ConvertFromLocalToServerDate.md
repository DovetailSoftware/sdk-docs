### ConvertFromLocalToServerDate Method

date to convert

Converts a DateTime from the [session timezone](fcSDK~FChoice.Foundation.FCSession~LocalTimeZone.md) to the [server timezone](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ServerTimeZone.md).

Syntax

```vbnet
```csharp

'Declaration
 

Public Overridable Function ConvertFromLocalToServerDate( _
   ByVal _date_ As [Date](#) _
) As [Date](#)

public virtual [DateTime](#) ConvertFromLocalToServerDate( 
   [DateTime](#) _date_
)

#### Parameters

_date_

date to convert

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)