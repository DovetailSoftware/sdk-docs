### AddContactToContractSetup Constructor

Identifies to which Contract the Contact will be added.

Contact's first name.

Contact's last name.

Contact's phone number.

Identifies the Site where the added Contact is located.

Initializes a new instance of the AddContactToContractSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _contractIDNum_ As String, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String, _
   ByVal _siteIDNum_ As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public AddContactToContractSetup( 
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

[!include[Requirements](../partials/requirements.md)]

#### Reference

[AddContactToContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddContactToContractSetup.md)  
[AddContactToContractSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddContactToContractSetup_members.md)