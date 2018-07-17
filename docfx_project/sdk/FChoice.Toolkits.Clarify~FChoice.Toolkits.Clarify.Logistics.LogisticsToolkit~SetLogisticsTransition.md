     SetLogisticsTransition Method                                                   

fcSDK Documentation

SetLogisticsTransition Method

Allows you to create or modify Logistics Transitions in the database. This overload takes a set of required parameters for the API.

Allows you to create or modify Logistics Transitions in the database.

Overload List

| Overload | Description |
| --- | --- |
| [SetLogisticsTransition(PartRequestType,PartRequestCondition,PartRequestCondition,String\[\])](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~SetLogisticsTransition(PartRequestType,PartRequestCondition,PartRequestCondition,String[]).md) | Allows you to create or modify Logistics Transitions in the database. This overload takes a set of required parameters for the API.   |
| [SetLogisticsTransition(SetLogisticsTransitionSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~SetLogisticsTransition(SetLogisticsTransitionSetup).md) | Allows you to create or modify Logistics Transitions in the database. This overload takes a setup object.   |
| [SetLogisticsTransition(SetLogisticsTransitionSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~SetLogisticsTransition(SetLogisticsTransitionSetup,IDbTransaction).md) | Allows you to create or modify Logistics Transitions in the database. This overload takes a setup object and a database transaction.   |

Remarks

If a transition does not yet exist for the conditions and request type, a new transition is created. Otherwise, the existing transition is modified.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup", Caption="SetLogisticsTransitionSetup Class"**