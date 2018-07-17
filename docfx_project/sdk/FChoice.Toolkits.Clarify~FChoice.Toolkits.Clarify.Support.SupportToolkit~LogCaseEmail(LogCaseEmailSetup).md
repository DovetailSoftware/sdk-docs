     LogCaseEmail(LogCaseEmailSetup) Method                                                   

fcSDK Documentation

LogCaseEmail(LogCaseEmailSetup) Method

Setup object for API invocation.

Creates an email log against a Case. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogCaseEmail( _
   ByVal _setupParam_ As [LogCaseEmailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup.md) _
) As [LogCaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult.md)

public [LogCaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult.md) LogCaseEmail( 
   [LogCaseEmailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [LogCaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult.md) object returned by the API method:

*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult~Objid.md) \- The Objid of the Log.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailResult~StatusChangeObjid.md) \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmail.md)  
[LogCaseEmailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailSetup.md)