### CreateEmployee(CreateEmployeeSetup) Method

Setup object for API invocation.

Create an Employee in Clarify This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateEmployee( _
   ByVal _setupParam_ As CreateEmployeeSetup _
) As CreateEmployeeResult
```

```csharp
public CreateEmployeeResult CreateEmployee( 
   CreateEmployeeSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the CreateEmployeeResult object returned by the API method:

*   EmployeeObjid \- Objid of the Employee record created.
*   UserObjid \- Objid of the User record created.

Remarks

Also creates a user login for the database system tables as required by Clarify.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateEmployee.md)  
[CreateEmployeeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md)