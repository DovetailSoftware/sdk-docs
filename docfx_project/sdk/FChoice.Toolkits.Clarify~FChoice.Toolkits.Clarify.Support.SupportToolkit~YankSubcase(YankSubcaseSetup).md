### YankSubcase(YankSubcaseSetup) Method

Setup object for API invocation.

Yank the Subcase from its current location to a new owner's WipBin. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function YankSubcase( _
   ByVal _setupParam_ As YankSubcaseSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult YankSubcase( 
   YankSubcaseSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The WipBin to place the Subcase in may also be specified. This is augmented function from base Clarify, where the Subcase is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~YankSubcase.md)  
[YankSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.YankSubcaseSetup.md)