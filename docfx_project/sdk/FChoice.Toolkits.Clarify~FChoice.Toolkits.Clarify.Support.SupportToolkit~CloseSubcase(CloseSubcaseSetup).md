### CloseSubcase(CloseSubcaseSetup) Method

Setup object for API invocation.

Closes the specified Subcase. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CloseSubcase( _
   ByVal _setupParam_ CloseSubcaseSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CloseSubcase( 
   CloseSubcaseSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The newly created CloseCase object.

Remarks

The Subcase must be in open condition.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CloseSubcase.md)  
[CloseSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseSubcaseSetup.md)