### FixCR(String) Method

Identifier of the CR being set to Fixed.

Change the condition of a CR to Fixed. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function FixCR( _
   ByVal _crIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult FixCR( 
   string _crIDNum_
)
```

#### Parameters

_crIDNum_

Identifier of the CR being set to Fixed.

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