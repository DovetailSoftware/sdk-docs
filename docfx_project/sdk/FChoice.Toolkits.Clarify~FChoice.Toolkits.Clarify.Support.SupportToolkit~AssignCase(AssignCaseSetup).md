     AssignCase(AssignCaseSetup) Method                                                   

fcSDK Documentation

AssignCase(AssignCaseSetup) Method

Setup object for API invocation.

Assign the Case to a new user. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AssignCase( _
   ByVal _setupParam_ As [AssignCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AssignCaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AssignCase( 
   [AssignCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AssignCaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Case must be in the Open condition, and the user assigning the Case does not have to be the owner of the Case. In base Clarify, the assigner of a Case must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Case in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignCase.md)  
[AssignCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AssignCaseSetup.md)