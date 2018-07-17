     UpdateContactSetup Constructor                                                   

fcSDK Documentation

UpdateContactSetup Constructor

Contact's first name

Contact's last name

Contact's telephone number

Identifier of the contact's current site.

Current role for the Contact at their site. Element from the 'Contact Role' application list. If not set, the default list value is used.

Initializes a new instance of the UpdateContactSetup class.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _firstName_ As String, _
   ByVal _lastName_ As String, _
   ByVal _phone_ As String, _
   ByVal _siteIDNum_ As String, _
   ByVal _roleName_ As String _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public UpdateContactSetup( 
   string _firstName_,
   string _lastName_,
   string _phone_,
   string _siteIDNum_,
   string _roleName_
)

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

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateContactSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateContactSetup.md)  
[UpdateContactSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdateContactSetup_members.md)