     GetCurrentDate Method (FCSession)                                                   

fcSDK Documentation

GetCurrentDate Method (FCSession)

Retrieves the DateTime of the CRM database.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overridable Function GetCurrentDate() As [Date](#)

public virtual [DateTime](#) GetCurrentDate()

#### Return Value

Current DateTime of the CRM database.

Remarks

When [ConvertTimeZone](fcSDK~FChoice.Foundation.FCSession~ConvertTimeZone.md) is enabled the return value will be converted to the [LocalTimeZone](fcSDK~FChoice.Foundation.FCSession~LocalTimeZone.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)