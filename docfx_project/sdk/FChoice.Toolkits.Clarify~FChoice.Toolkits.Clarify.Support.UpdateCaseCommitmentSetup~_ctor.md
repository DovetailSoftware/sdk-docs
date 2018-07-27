### UpdateCaseCommitmentSetup Constructor

Identifier of the Case.

DateTime of when the commitment is due.

Objid of the commitment to update.

Initializes a new instance of the UpdateCaseCommitmentSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _caseIDNum_ As String, _
   ByVal _commitmentDate_ As Date, _
   ByVal _commitmentObjid_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public UpdateCaseCommitmentSetup( 
   string _caseIDNum_,
   DateTime _commitmentDate_,
   int _commitmentObjid_
)
```

#### Parameters

_caseIDNum_

Identifier of the Case.

_commitmentDate_

DateTime of when the commitment is due.

_commitmentObjid_

Objid of the commitment to update.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateCaseCommitmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseCommitmentSetup.md)  
[UpdateCaseCommitmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.UpdateCaseCommitmentSetup_members.md)