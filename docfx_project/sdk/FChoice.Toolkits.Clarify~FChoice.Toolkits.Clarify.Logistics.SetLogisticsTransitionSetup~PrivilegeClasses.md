     PrivilegeClasses Property                                                   

fcSDK Documentation

PrivilegeClasses Property

An array of Strings which are the names of the privilege classes allowed to perform this transition

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property PrivilegeClasses As [String()](#)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [string\[\]](#) PrivilegeClasses {get; set;}

Remarks

If this string array contains "ALLCLASSES", all privclasses can make the transition. If this string array contains "NOCLASSES", no privclasses can make this transition  

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SetLogisticsTransitionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup.md)  
[SetLogisticsTransitionSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup_members.md)