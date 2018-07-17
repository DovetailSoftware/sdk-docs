     LogSubcasePhone(String,String,String,String) Method                                                   

fcSDK Documentation

LogSubcasePhone(String,String,String,String) Method

Identifier of the Subcase against which the phone note is being logged.

Contact's first name.

Contact's last name.

Contact's phone number.

Creates a phone log against a Subcase. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogSubcasePhone( _
   ByVal _subcaseIDNum_ As String, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String _
) As [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md)

public [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md) LogSubcasePhone( 
   string _subcaseIDNum_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_
)

#### Parameters

_subcaseIDNum_

Identifier of the Subcase against which the phone note is being logged.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

#### Return Value

The following values are populated in the [LogSubcasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult~Objid.md) \- The Objid of the Log.
*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneResult~StatusChangeObjid.md) \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcasePhoneSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcasePhone.md)