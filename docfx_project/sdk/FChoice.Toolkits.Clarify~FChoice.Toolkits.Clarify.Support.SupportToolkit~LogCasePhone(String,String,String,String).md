### LogCasePhone(String,String,String,String) Method

Identifier of the Case against which the phone note is being logged.

Contact's first name.

Contact's last name.

Contact's phone number.

Creates a phone log against a Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function LogCasePhone( _
   ByVal _caseIDNum_ As String, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String _
) As [LogCasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult.md)

public [LogCasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult.md) LogCasePhone( 
   string _caseIDNum_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_
)

#### Parameters

_caseIDNum_

Identifier of the Case against which the phone note is being logged.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

#### Return Value

The following values are populated in the [LogCasePhoneResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult.md) object returned by the API method:

*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult~Objid.md) \- The Objid of the Log.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneResult~StatusChangeObjid.md) \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCasePhoneSetup~IsCommitmentToCustomer.md) properties.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCasePhone.md)