### FulfillCommitment(FulfillCommitmentSetup) Method

Setup object for API invocation.

Fulfills a previously unfulfilled commitment. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function FulfillCommitment( _
   ByVal _setupParam_ FulfillCommitmentSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult FulfillCommitment( 
   FulfillCommitmentSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~FulfillCommitment.md)  
[FulfillCommitmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.FulfillCommitmentSetup.md)