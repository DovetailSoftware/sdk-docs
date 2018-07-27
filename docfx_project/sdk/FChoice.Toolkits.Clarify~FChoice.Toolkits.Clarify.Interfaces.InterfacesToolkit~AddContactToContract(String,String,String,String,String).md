### AddContactToContract(String,String,String,String,String) Method

Identifies to which Contract the Contact will be added.

Contact's first name.

Contact's last name.

Contact's phone number.

Identifies the Site where the added Contact is located.

Adds a Contact to an existing Contract. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AddContactToContract( _
   ByVal _contractIDNum_ As String, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String, _
   ByVal _siteIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AddContactToContract( 
   string _contractIDNum_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_,
   string _siteIDNum_
)
```

#### Parameters

_contractIDNum_

Identifies to which Contract the Contact will be added.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

_siteIDNum_

Identifies the Site where the added Contact is located.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Contract the Contact was added to.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddContactToContract.md)