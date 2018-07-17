     DataRestrictionsEnabled Property (ClarifyApplication)                                                   

fcSDK Documentation

DataRestrictionsEnabled Property (ClarifyApplication)

Gets whether or not First Choice Data Restriction technology is enabled for this Clarify database.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property DataRestrictionsEnabled As Boolean

public bool DataRestrictionsEnabled {get;}

#### Property Value

Whether or not First Choice Data Restriction technology is enabled for this Clarify database.

Remarks

When ClarifyApplication is initializing, it determines whether the data restriction tables and configuration is loaded and will set this value to true, otherwise it is always false.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)