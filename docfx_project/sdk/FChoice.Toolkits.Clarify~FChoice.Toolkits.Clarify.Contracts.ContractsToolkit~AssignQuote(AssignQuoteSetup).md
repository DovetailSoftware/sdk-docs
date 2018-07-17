     AssignQuote(AssignQuoteSetup) Method                                                   

fcSDK Documentation

AssignQuote(AssignQuoteSetup) Method

Setup object for API invocation.

Assign the Quote to a new user. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AssignQuote( _
   ByVal _setupParam_ As [AssignQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AssignQuoteSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AssignQuote( 
   [AssignQuoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AssignQuoteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Quote must be in the Open condition, and the user assigning the Quote does not have to be the owner of the Quote. In base Clarify, the assigner of a Quote must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Quote in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AssignQuote.md)  
[AssignQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AssignQuoteSetup.md)