### UpdateCase(UpdateCaseSetup) Method

Setup object for API invocation.

Updates an existing Case. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function UpdateCase( _
   ByVal _setupParam_ UpdateCaseSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateCase( 
   UpdateCaseSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

If the [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup~UserName.md) is not the current owner of the Case and this flag is **true** then the Update will not happen.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~UpdateCase.md)  
[UpdateCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseSetup.md)