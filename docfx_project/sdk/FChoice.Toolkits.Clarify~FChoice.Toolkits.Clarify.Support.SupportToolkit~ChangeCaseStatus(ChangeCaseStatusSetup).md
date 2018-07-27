### ChangeCaseStatus(ChangeCaseStatusSetup) Method

Setup object for API invocation.

Changes the status of a Case. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangeCaseStatus( _
   ByVal _setupParam_ ChangeCaseStatusSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeCaseStatus( 
   ChangeCaseStatusSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Case may be opened or closed, but the status selected must be valid for the current condition. In other words, you cannot assign a Closed condition status to a Case that is currently Open.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseStatus.md)  
[ChangeCaseStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseStatusSetup.md)