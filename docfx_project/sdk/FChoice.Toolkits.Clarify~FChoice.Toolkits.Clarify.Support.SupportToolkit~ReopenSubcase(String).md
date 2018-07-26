### ReopenSubcase(String) Method

Identifier of the Subcase being reopened.

Reopens the specified Subcase. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function ReopenSubcase( _
   ByVal _subcaseIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ReopenSubcase( 
   string _subcaseIDNum_
)
```

#### Parameters

_subcaseIDNum_

Identifier of the Subcase being reopened.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenSubcaseSetup~UserName.md) that reopens the Subcase becomes the new owner.

If the [WipBin](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenSubcaseSetup~WipBin.md) is not specified the Subcase is placed in the user's default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenSubcase.md)