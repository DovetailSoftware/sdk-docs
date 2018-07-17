     Notes Property (UpdatePartRequestHeaderSetup)                                                   

fcSDK Documentation

Notes Property (UpdatePartRequestHeaderSetup)

Notes about the Part Request Header update

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property Notes As String

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public string Notes {get; set;}

Remarks

If this property is not set, the existing value will remain. If set to a value other than an empty string, this value will be updated in the database. Otherwise, if this property is set to an empty string the notes will be cleared in the database.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdatePartRequestHeaderSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartRequestHeaderSetup.md)  
[UpdatePartRequestHeaderSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartRequestHeaderSetup_members.md)