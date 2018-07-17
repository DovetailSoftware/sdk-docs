     LogLeadNote(LogLeadNoteSetup) Method                                                   

fcSDK Documentation

LogLeadNote(LogLeadNoteSetup) Method

Setup object for API invocation.

Log a note for a Lead. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogLeadNote( _
   ByVal _setupParam_ As [LogLeadNoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.LogLeadNoteSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogLeadNote( 
   [LogLeadNoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.LogLeadNoteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the NoteLog.

Remarks

The objid of the lead must be specified (since no other information on the lead is unique), and the description (note text). A internal use only text field can be supplied. The user who logged the note, and when can be indicated.

The API can generate a time bomb (for business rule notification).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~LogLeadNote.md)  
[LogLeadNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.LogLeadNoteSetup.md)