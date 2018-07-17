     LogCaseNote(String) Method                                                   

fcSDK Documentation

LogCaseNote(String) Method

Identifier of the Case against which the note is being logged.

Creates a note log against a Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogCaseNote( _
   ByVal _caseIDNum_ As String _
) As [LogCaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult.md)

public [LogCaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult.md) LogCaseNote( 
   string _caseIDNum_
)

#### Parameters

_caseIDNum_

Identifier of the Case against which the note is being logged.

#### Return Value

The following values are populated in the [LogCaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult~Objid.md) \- The Objid of the Log.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult~StatusChangeObjid.md) \- The Objid of the StatusChange.
*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult~CommitmentObjid.md) \- The Objid of the Commitment.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~IsCommitmentToCustomer.md) properties.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseNote.md)