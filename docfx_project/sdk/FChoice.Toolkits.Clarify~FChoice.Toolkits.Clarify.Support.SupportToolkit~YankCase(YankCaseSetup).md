### YankCase(YankCaseSetup) Method

Setup object for API invocation.

Yank the Case from its current location to a new owner's WipBin. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function YankCase( _
   ByVal _setupParam_ YankCaseSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult YankCase( 
   YankCaseSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The WipBin to place the Case in may also be specified. This is augmented function from base Clarify, where the Case is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~YankCase.md)  
[YankCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.YankCaseSetup.md)