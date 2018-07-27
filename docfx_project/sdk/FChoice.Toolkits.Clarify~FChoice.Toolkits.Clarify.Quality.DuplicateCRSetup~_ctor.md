### DuplicateCRSetup Constructor

Identifier of the CR being marked as a duplicate.

Identifier of the 'master' CR this CR duplicates.

Initializes a new instance of the DuplicateCRSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _crIDNum_ As String, _
   ByVal _masterCRIDNum_ As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public DuplicateCRSetup( 
   string _crIDNum_,
   string _masterCRIDNum_
)
```

#### Parameters

_crIDNum_

Identifier of the CR being marked as a duplicate.

_masterCRIDNum_

Identifier of the 'master' CR this CR duplicates.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DuplicateCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.DuplicateCRSetup.md)  
[DuplicateCRSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.DuplicateCRSetup_members.md)