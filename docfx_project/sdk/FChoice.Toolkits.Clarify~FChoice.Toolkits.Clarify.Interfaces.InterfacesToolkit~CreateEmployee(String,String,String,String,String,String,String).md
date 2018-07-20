### CreateEmployee(String,String,String,String,String,String,String) Method

Employee first name

Employee last name

Employee login name

Employee password

Identifier of the Site where the Employee is located.

Employee's email address

Online privilege class

Create an Employee in Clarify This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateEmployee( _
   ByVal _firstName_ As String, _
   ByVal _lastName_ As String, _
   ByVal _loginName_ As String, _
   ByVal _password_ As String, _
   ByVal _siteIDNum_ As String, _
   ByVal _email_ As String, _
   ByVal _onlinePrivilegeClass_ As String _
) As [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md)

public [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md) CreateEmployee( 
   string _firstName_,
   string _lastName_,
   string _loginName_,
   string _password_,
   string _siteIDNum_,
   string _email_,
   string _onlinePrivilegeClass_
)

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

#### Return Value

The following values are populated in the [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md) object returned by the API method:

*   [UserObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult~UserObjid.md) \- Objid of the User record created.
*   [EmployeeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult~EmployeeObjid.md) \- Objid of the Employee record created.

Remarks

Also creates a user login for the database system tables as required by Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateEmployee.md)