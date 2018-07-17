     CreateEmployee(CreateEmployeeSetup) Method                                                   

fcSDK Documentation

CreateEmployee(CreateEmployeeSetup) Method

Setup object for API invocation.

Create an Employee in Clarify This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateEmployee( _
   ByVal _setupParam_ As [CreateEmployeeSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md) _
) As [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md)

public [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md) CreateEmployee( 
   [CreateEmployeeSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md) object returned by the API method:

*   [EmployeeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult~EmployeeObjid.md) \- Objid of the Employee record created.
*   [UserObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult~UserObjid.md) \- Objid of the User record created.

Remarks

Also creates a user login for the database system tables as required by Clarify.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateEmployee.md)  
[CreateEmployeeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md)