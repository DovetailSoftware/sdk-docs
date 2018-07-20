### LogCRNote(LogCRNoteSetup) Method

Setup object for API invocation.

Used to create a note log against a CR. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function LogCRNote( _
   ByVal _setupParam_ As [LogCRNoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.LogCRNoteSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogCRNote( 
   [LogCRNoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.LogCRNoteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the NoteLog.

Remarks

Allows for the assigning of notes and internal use only text. The date the note is logged can be set, as well as the user who logs the note. Additional fields on the log_cr_note can also be set as well as a time bomb (for the note log), which allows notifications to be generated based on the event.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~LogCRNote.md)  
[LogCRNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.LogCRNoteSetup.md)