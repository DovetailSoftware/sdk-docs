### LogCaseNote(LogCaseNoteSetup) Method

Setup object for API invocation.

Creates a note log against a Case. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function LogCaseNote( _
   ByVal _setupParam_ As LogCaseNoteSetup _
) As LogCaseNoteResult
```

```csharp
public LogCaseNoteResult LogCaseNote( 
   LogCaseNoteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the LogCaseNoteResult object returned by the API method:

*   Objid \- The Objid of the Log.
*   CommitmentObjid \- The Objid of the Commitment.
*   StatusChangeObjid \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseNote.md)  
[LogCaseNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup.md)