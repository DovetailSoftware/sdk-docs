     AutoClose Property                                                   

fcSDK Documentation

AutoClose Property

Specifies whether the Part Request should be closed if all of the inventory for this Part Request is received (or an overage). If it is already closed, and no other details exist for the header, this parameter specifies whether the Part Request Header should be closed as well.  

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property AutoClose As Boolean

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public bool AutoClose {get; set;}

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ReceivePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup.md)  
[ReceivePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup_members.md)