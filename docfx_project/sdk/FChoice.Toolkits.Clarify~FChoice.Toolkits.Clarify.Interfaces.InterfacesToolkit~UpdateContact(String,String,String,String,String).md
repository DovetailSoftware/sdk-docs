### UpdateContact(String,String,String,String,String) Method

Contact's first name

Contact's last name

Contact's telephone number

Identifier of the contact's current site.

Current role for the Contact at their site. Element from the 'Contact Role' application list. If not set, the default list value is used.

Update a Contact. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UpdateContact( _
   ByVal _firstName_ As String, _
   ByVal _lastName_ As String, _
   ByVal _phone_ As String, _
   ByVal _siteIDNum_ As String, _
   ByVal _roleName_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateContact( 
   string _firstName_,
   string _lastName_,
   string _phone_,
   string _siteIDNum_,
   string _roleName_
)
```

#### Parameters

_firstName_

Contact's first name

_lastName_

Contact's last name

_phone_

Contact's telephone number

_siteIDNum_

Identifier of the contact's current site.

_roleName_

Current role for the Contact at their site. Element from the 'Contact Role' application list. If not set, the default list value is used.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Contact.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdateContact.md)