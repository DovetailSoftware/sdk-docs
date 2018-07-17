     CreateContact(String,String,String,String) Method                                                   

fcSDK Documentation

CreateContact(String,String,String,String) Method

Contact first name

Contact last name

Phone number for the contact

Identifier of the site for the contact role to create.

Creates a Contact. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateContact( _
   ByVal _firstName_ As String, _
   ByVal _lastName_ As String, _
   ByVal _phone_ As String, _
   ByVal _siteIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateContact( 
   string _firstName_,
   string _lastName_,
   string _phone_,
   string _siteIDNum_
)

#### Parameters

_firstName_

Contact first name

_lastName_

Contact last name

_phone_

Phone number for the contact

_siteIDNum_

Identifier of the site for the contact role to create.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Contact.

Remarks

A default contact role for the [Site](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateContactSetup~SiteIDNum.md) is automatically created if no [role name](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateContactSetup~RoleName.md) is defined.

If you need to create duplicate contacts (same first name, last name, phone), you may use the [AllowDuplicateContact](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkitBase~AllowDuplicateContact.md) property.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateContact.md)