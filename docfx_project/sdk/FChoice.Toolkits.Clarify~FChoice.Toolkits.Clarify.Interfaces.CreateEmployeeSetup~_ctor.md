### CreateEmployeeSetup Constructor

Employee first name

Employee last name

Employee login name

Employee password

Identifier of the Site where the Employee is located.

Employee's email address

Online privilege class

Initializes a new instance of the CreateEmployeeSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _firstName_ As String, _
   ByVal _lastName_ As String, _
   ByVal _loginName_ As String, _
   ByVal _password_ As String, _
   ByVal _siteIDNum_ As String, _
   ByVal _email_ As String, _
   ByVal _onlinePrivilegeClass_ As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateEmployeeSetup( 
   string _firstName_,
   string _lastName_,
   string _loginName_,
   string _password_,
   string _siteIDNum_,
   string _email_,
   string _onlinePrivilegeClass_
)
```

#### Parameters

_firstName_

Employee first name

_lastName_

Employee last name

_loginName_

Employee login name

_password_

Employee password

_siteIDNum_

Identifier of the Site where the Employee is located.

_email_

Employee's email address

_onlinePrivilegeClass_

Online privilege class

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateEmployeeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md)  
[CreateEmployeeSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup_members.md)