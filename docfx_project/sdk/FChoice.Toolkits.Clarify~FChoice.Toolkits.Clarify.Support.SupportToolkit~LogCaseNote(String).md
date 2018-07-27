### LogCaseNote(String) Method

Identifier of the Case against which the note is being logged.

Creates a note log against a Case. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogCaseNote( _
   ByVal _caseIDNum_ As String _
) As LogCaseNoteResult
```

```csharp
public LogCaseNoteResult LogCaseNote( 
   string _caseIDNum_
)
```

#### Parameters

_caseIDNum_

Identifier of the Case against which the note is being logged.

#### Return Value

The following values are populated in the LogCaseNoteResult object returned by the API method:

*   Objid \- The Objid of the Log.
*   StatusChangeObjid \- The Objid of the StatusChange.
*   CommitmentObjid \- The Objid of the Commitment.

#### Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseNote.md)