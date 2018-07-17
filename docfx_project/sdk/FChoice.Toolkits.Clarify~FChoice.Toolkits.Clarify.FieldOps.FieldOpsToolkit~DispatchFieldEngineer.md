     DispatchFieldEngineer Method                                                   

fcSDK Documentation

DispatchFieldEngineer Method

Dispatch the FieldEngineer to the specified queue. This overload takes a set of required parameters for the API.

Used to create a work order to dispatch a field engineer to a site.

Overload List

| Overload | Description |
| --- | --- |
| [DispatchFieldEngineer(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~DispatchFieldEngineer(String).md) | Dispatch the FieldEngineer to the specified queue. This overload takes a set of required parameters for the API.   |
| [DispatchFieldEngineer(DispatchFieldEngineerSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~DispatchFieldEngineer(DispatchFieldEngineerSetup).md) | Dispatch the FieldEngineer to the specified queue. This overload takes a setup object.   |
| [DispatchFieldEngineer(DispatchFieldEngineerSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~DispatchFieldEngineer(DispatchFieldEngineerSetup,IDbTransaction).md) | Used to create a work order to dispatch a field engineer to a site. This overload takes a setup object and a database transaction.   |

Remarks

The contact and site for the dispatch will be derived from the case/subcase. If this is not correct, the address for the site for the dispatch can be specified in the site id field. If some of the contact or site information need to be overridden, the phone and address fields are used to pass in the new information.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[DispatchFieldEngineerSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.DispatchFieldEngineerSetup.md)