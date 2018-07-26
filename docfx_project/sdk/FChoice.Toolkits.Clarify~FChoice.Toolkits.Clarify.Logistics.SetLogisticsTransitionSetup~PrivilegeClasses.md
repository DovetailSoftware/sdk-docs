### PrivilegeClasses Property

An array of Strings which are the names of the privilege classes allowed to perform this transition

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property PrivilegeClasses As String()
```

```csharp
[PropertyBitValueAttribute()]
public string[] PrivilegeClasses {get; set;}
```

#### Remarks

If this string array contains "ALLCLASSES", all privclasses can make the transition. If this string array contains "NOCLASSES", no privclasses can make this transition  

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SetLogisticsTransitionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup.md)  
[SetLogisticsTransitionSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup_members.md)