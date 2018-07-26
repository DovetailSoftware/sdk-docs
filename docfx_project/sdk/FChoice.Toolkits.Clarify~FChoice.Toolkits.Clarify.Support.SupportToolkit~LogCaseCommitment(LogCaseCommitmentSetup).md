### LogCaseCommitment(LogCaseCommitmentSetup) Method

Setup object for API invocation.

Creates a  commitment against a Case. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function LogCaseCommitment( _
   ByVal _setupParam_ LogCaseCommitmentSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult LogCaseCommitment( 
   LogCaseCommitmentSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Log.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseCommitment.md)  
[LogCaseCommitmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseCommitmentSetup.md)