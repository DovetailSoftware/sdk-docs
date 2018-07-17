     LogSubcaseEmail(String) Method                                                   

fcSDK Documentation

LogSubcaseEmail(String) Method

Identifier of the Subcase against which the email is being logged.

Creates an email log against a Subcase. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogSubcaseEmail( _
   ByVal _subcaseIDNum_ As String _
) As [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md)

public [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md) LogSubcaseEmail( 
   string _subcaseIDNum_
)

#### Parameters

_subcaseIDNum_

Identifier of the Subcase against which the email is being logged.

#### Return Value

The following values are populated in the [LogSubcaseEmailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult.md) object returned by the API method:

*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult~StatusChangeObjid.md) \- The Objid of the StatusChange.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailResult~Objid.md) \- The Objid of the Log.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseEmailSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseEmail.md)