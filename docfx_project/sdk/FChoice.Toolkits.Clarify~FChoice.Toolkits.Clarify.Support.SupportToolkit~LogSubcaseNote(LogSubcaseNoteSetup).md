     LogSubcaseNote(LogSubcaseNoteSetup) Method                                                   

fcSDK Documentation

LogSubcaseNote(LogSubcaseNoteSetup) Method

Setup object for API invocation.

Creates a note log against a Subcase. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogSubcaseNote( _
   ByVal _setupParam_ As [LogSubcaseNoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup.md) _
) As [LogSubcaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteResult.md)

public [LogSubcaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteResult.md) LogSubcaseNote( 
   [LogSubcaseNoteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [LogSubcaseNoteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteResult~Objid.md) \- The Objid of the Log.
*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteResult~StatusChangeObjid.md) \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseNote.md)  
[LogSubcaseNoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseNoteSetup.md)