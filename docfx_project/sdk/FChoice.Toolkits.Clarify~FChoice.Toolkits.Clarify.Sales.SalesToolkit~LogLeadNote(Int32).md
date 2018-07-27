### LogLeadNote(Int32) Method

The objid of the lead for the note log.

Log a note for a Lead. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function LogLeadNote( _
   ByVal _leadObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult LogLeadNote( 
   int _leadObjid_
)
```

#### Parameters

_leadObjid_

The objid of the lead for the note log.

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the NoteLog.

#### Remarks

The objid of the lead must be specified (since no other information on the lead is unique), and the description (note text). A internal use only text field can be supplied. The user who logged the note, and when can be indicated.

The API can generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~LogLeadNote.md)