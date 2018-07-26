### CloseCR(String) Method

Change Request Identifier

Close a CR. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function CloseCR( _
   ByVal _crIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CloseCR( 
   string _crIDNum_
)
```

#### Parameters

_crIDNum_

Change Request Identifier

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the CloseBug.

Remarks

The CR must be in a condition/status that allows the transition to the Closed condition.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CloseCR.md)