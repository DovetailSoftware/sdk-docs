     LogSubcaseEmail(LogSubcaseEmailSetup) Method                                                   

fcSDK Documentation

LogSubcaseEmail(LogSubcaseEmailSetup) Method

Setup object for API invocation.

Creates an email log against a Subcase. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogSubcaseEmail( _
   ByVal _setupParam_ As [LogSubcaseEmailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup.md) _
) As [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md)

public [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md) LogSubcaseEmail( 
   [LogSubcaseEmailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md) object returned by the API method:

*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult~Objid.md) \- The Objid of the Log.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult~StatusChangeObjid.md) \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseEmail.md)  
[LogSubcaseEmailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup.md)