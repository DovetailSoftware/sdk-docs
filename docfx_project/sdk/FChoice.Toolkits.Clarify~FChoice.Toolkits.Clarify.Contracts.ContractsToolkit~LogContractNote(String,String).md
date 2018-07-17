     LogContractNote(String,String) Method                                                   

fcSDK Documentation

LogContractNote(String,String) Method

Contract Identifier.

The notes being logged to the Contract.

Causes a note log to be created and added to the specified contract. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogContractNote( _
   ByVal _contractIDNum_ As String, _
   ByVal _notes_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogContractNote( 
   string _contractIDNum_,
   string _notes_
)

#### Parameters

_contractIDNum_

Contract Identifier.

_notes_

The notes being logged to the Contract.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the NotesLog.

Remarks

It logs the note with the user name specified. There can be Internal Use notes added. It allows the setting of optional fields on the notes_log record with the use of the AdditionalFields object.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~LogContractNote.md)