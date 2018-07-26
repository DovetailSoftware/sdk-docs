### YankSubcase(String) Method

Subcase Identifier.

Yank the Subcase from its current location to a new owner's WipBin. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function YankSubcase( _
   ByVal _subcaseIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult YankSubcase( 
   string _subcaseIDNum_
)
```

#### Parameters

_subcaseIDNum_

Subcase Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The WipBin to place the Subcase in may also be specified. This is augmented function from base Clarify, where the Subcase is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~YankSubcase.md)