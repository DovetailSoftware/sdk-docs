### LogSubcaseNote(LogSubcaseNoteSetup) Method

Setup object for API invocation.

Creates a note log against a Subcase. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcaseNote( _
   ByVal _setupParam_ As LogSubcaseNoteSetup _
) As LogSubcaseNoteResult
```

```csharp
public LogSubcaseNoteResult LogSubcaseNote( 
   LogSubcaseNoteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the LogSubcaseNoteResult object returned by the API method:

*   Objid \- The Objid of the Log.
*   CommitmentObjid \- The Objid of the Commitment.
*   StatusChangeObjid \- The Objid of the StatusChange.

#### Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseNote.md)  
[LogSubcaseNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup.md)