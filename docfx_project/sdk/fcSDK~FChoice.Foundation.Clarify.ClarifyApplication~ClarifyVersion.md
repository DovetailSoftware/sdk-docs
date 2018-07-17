     ClarifyVersion Property (ClarifyApplication)                                                   

fcSDK Documentation

ClarifyVersion Property (ClarifyApplication)

Gets a string which describes the version of Clarify that [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) is currently running against.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property ClarifyVersion As String

public string ClarifyVersion {get;}

#### Property Value

A string which describes the Clarify version installed in the database to which [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) is connected.

Remarks

If the database is Clarify 9, "9" is returned, Clarify CFO98 returns "CFO98", and Clarify 12.5 returns "12.5". If the version of Clarify is not known or is of a newer version than was available when FCFL.NET was released, "Unknown" will be returned.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)