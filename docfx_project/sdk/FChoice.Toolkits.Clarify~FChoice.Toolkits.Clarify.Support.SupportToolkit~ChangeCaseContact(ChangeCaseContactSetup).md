### ChangeCaseContact(ChangeCaseContactSetup) Method

Setup object for API invocation.

Changes the contact for a Case. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function ChangeCaseContact( _
   ByVal _setupParam_ ChangeCaseContactSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeCaseContact( 
   ChangeCaseContactSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Case phone and alternate phone are also changed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseContact.md)  
[ChangeCaseContactSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseContactSetup.md)