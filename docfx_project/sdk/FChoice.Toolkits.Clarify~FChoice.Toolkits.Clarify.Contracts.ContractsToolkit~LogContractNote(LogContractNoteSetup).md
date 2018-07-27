### LogContractNote(LogContractNoteSetup) Method

Setup object for API invocation.

Causes a note log to be created and added to the specified contract. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogContractNote( _
   ByVal _setupParam_ LogContractNoteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult LogContractNote( 
   LogContractNoteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the NotesLog.

#### Remarks

It logs the note with the user name specified. There can be Internal Use notes added. It allows the setting of optional fields on the notes_log record with the use of the AdditionalFields object.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~LogContractNote.md)  
[LogContractNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.LogContractNoteSetup.md)