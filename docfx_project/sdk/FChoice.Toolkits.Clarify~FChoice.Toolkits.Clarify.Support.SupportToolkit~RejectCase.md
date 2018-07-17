     RejectCase Method                                                   

fcSDK Documentation

RejectCase Method

Reject the Case from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the Case from the queue in which it currently resides, and return it to the owner.

Overload List

| Overload | Description |
| --- | --- |
| [RejectCase(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectCase(String).md) | Reject the Case from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectCase(RejectCaseSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectCase(RejectCaseSetup).md) | Reject the Case from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectCase(RejectCaseSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectCase(RejectCaseSetup,IDbTransaction).md) | Reject the Case from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

Remarks

The Case must be in open condition, and currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[RejectCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectCaseSetup.md)