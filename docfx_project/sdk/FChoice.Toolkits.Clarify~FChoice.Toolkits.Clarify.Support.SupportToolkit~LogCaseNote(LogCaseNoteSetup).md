     LogCaseNote(LogCaseNoteSetup) Method                                                   

fcSDK Documentation

LogCaseNote(LogCaseNoteSetup) Method

Setup object for API invocation.

Creates a note log against a Case. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogCaseNote( _
   ByVal _setupParam_ As [LogCaseNoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup.md) _
) As [LogCaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult.md)

public [LogCaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult.md) LogCaseNote( 
   [LogCaseNoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [LogCaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult~Objid.md) \- The Objid of the Log.
*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteResult~StatusChangeObjid.md) \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup~IsCommitmentToCustomer.md) properties.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseNote.md)  
[LogCaseNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseNoteSetup.md)