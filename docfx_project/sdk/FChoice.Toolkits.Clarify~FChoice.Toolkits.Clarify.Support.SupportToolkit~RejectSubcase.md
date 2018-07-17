     RejectSubcase Method                                                   

fcSDK Documentation

RejectSubcase Method

Reject the Subcase from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the Subcase from the queue in which it currently resides, and return it to the owner.

Overload List

| Overload | Description |
| --- | --- |
| [RejectSubcase(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectSubcase(String).md) | Reject the Subcase from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectSubcase(RejectSubcaseSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectSubcase(RejectSubcaseSetup).md) | Reject the Subcase from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectSubcase(RejectSubcaseSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectSubcase(RejectSubcaseSetup,IDbTransaction).md) | Reject the Subcase from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

Remarks

The Subcase must be in open condition, and currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[RejectSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectSubcaseSetup.md)