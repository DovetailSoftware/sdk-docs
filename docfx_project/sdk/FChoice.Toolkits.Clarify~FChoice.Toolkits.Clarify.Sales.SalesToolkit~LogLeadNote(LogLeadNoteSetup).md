### LogLeadNote(LogLeadNoteSetup) Method

Setup object for API invocation.

Log a note for a Lead. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogLeadNote( _
   ByVal _setupParam_ LogLeadNoteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult LogLeadNote( 
   LogLeadNoteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the NoteLog.

#### Remarks

The objid of the lead must be specified (since no other information on the lead is unique), and the description (note text). A internal use only text field can be supplied. The user who logged the note, and when can be indicated.

The API can generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~LogLeadNote.md)  
[LogLeadNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.LogLeadNoteSetup.md)