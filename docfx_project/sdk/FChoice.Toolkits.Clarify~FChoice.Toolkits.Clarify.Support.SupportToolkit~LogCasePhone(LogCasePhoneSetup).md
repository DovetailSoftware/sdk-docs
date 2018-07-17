     LogCasePhone(LogCasePhoneSetup) Method                                                   

fcSDK Documentation

LogCasePhone(LogCasePhoneSetup) Method

Setup object for API invocation.

Creates a phone log against a Case. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogCasePhone( _
   ByVal _setupParam_ As [LogCasePhoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup.md) _
) As [LogCasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult.md)

public [LogCasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult.md) LogCasePhone( 
   [LogCasePhoneSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [LogCasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult.md) object returned by the API method:

*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult~StatusChangeObjid.md) \- The Objid of the StatusChange.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult~Objid.md) \- The Objid of the Log.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~IsCommitmentToCustomer.md) properties.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCasePhone.md)  
[LogCasePhoneSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup.md)