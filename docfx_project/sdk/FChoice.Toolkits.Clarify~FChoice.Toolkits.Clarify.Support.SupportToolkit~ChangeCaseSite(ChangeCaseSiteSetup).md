### ChangeCaseSite(ChangeCaseSiteSetup) Method

Setup object for API invocation.

Changes the Site of a Case. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangeCaseSite( _
   ByVal _setupParam_ ChangeCaseSiteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeCaseSite( 
   ChangeCaseSiteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

Any related Site Parts and Contracts for the Case are unrelated.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseSite.md)  
[ChangeCaseSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseSiteSetup.md)