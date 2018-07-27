### FixCR(FixCRSetup) Method

Setup object for API invocation.

Change the condition of a CR to Fixed. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function FixCR( _
   ByVal _setupParam_ FixCRSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult FixCR( 
   FixCRSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the FixBug.

#### Remarks

The CR condition will become Fixed even if it was already Closed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~FixCR.md)  
[FixCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.FixCRSetup.md)