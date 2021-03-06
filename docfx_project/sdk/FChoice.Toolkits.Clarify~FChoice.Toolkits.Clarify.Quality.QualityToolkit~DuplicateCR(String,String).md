﻿### DuplicateCR(String,String) Method

Identifier of the CR being marked as a duplicate.

Identifier of the 'master' CR this CR duplicates.

Mark a CR as duplicate of another 'master' CR. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DuplicateCR( _
   ByVal _crIDNum_ As String, _
   ByVal _masterCRIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult DuplicateCR( 
   string _crIDNum_,
   string _masterCRIDNum_
)
```

#### Parameters

_crIDNum_

Identifier of the CR being marked as a duplicate.

_masterCRIDNum_

Identifier of the 'master' CR this CR duplicates.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The condition of the CR is changed to **CR Duplicate/Closed**.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~DuplicateCR.md)