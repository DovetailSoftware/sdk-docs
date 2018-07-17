     CreateContact Method                                                   

fcSDK Documentation

CreateContact Method

Creates a Contact. This overload takes a setup object.

Creates a Contact.

Overload List

| Overload | Description |
| --- | --- |
| [CreateContact(CreateContactSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateContact(CreateContactSetup).md) | Creates a Contact. This overload takes a setup object.   |
| [CreateContact(CreateContactSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateContact(CreateContactSetup,IDbTransaction).md) | Creates a Contact. This overload takes a setup object and a database transaction.   |
| [CreateContact(String,String,String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateContact(String,String,String,String).md) | Creates a Contact. This overload takes a set of required parameters for the API.   |

Remarks

A default contact role for the [Site](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateContactSetup~SiteIDNum.md) is automatically created if no [role name](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateContactSetup~RoleName.md) is defined.

If you need to create duplicate contacts (same first name, last name, phone), you may use the [AllowDuplicateContact](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkitBase~AllowDuplicateContact.md) property.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[CreateContactSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateContactSetup.md)