### DuplicateCR(DuplicateCRSetup) Method

Setup object for API invocation.

Mark a CR as duplicate of another 'master' CR. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DuplicateCR( _
   ByVal _setupParam_ DuplicateCRSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DuplicateCR( 
   DuplicateCRSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The condition of the CR is changed to **CR Duplicate/Closed**.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~DuplicateCR.md)  
[DuplicateCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.DuplicateCRSetup.md)