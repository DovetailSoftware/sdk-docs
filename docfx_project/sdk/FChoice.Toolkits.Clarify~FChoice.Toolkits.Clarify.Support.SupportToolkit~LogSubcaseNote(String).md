### LogSubcaseNote(String) Method

Identifier of the Subcase against which the note is being logged.

Creates a note log against a Subcase. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcaseNote( _
   ByVal _subcaseIDNum_ As String _
) As LogSubcaseNoteResult
```

```csharp
public LogSubcaseNoteResult LogSubcaseNote( 
   string _subcaseIDNum_
)
```

#### Parameters

_subcaseIDNum_

Identifier of the Subcase against which the note is being logged.

#### Return Value

The following values are populated in the LogSubcaseNoteResult object returned by the API method:

*   StatusChangeObjid \- The Objid of the StatusChange.
*   CommitmentObjid \- The Objid of the Commitment.
*   Objid \- The Objid of the Log.

#### Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseNote.md)