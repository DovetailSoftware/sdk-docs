### AssignCR(String) Method

CR Identifier.

Assign the CR to a new user. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AssignCR( _
   ByVal _cridnum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AssignCR( 
   string _cridnum_
)
```

#### Parameters

_cridnum_

CR Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The CR must be in the Open condition, and the user assigning the CR does not have to be the owner of the CR. In base Clarify, the assigner of a CR must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the CR in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AssignCR.md)