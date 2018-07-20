### LogCaseCommitment(String,String,TimeSpan,String,String,String) Method

Identifier of the Case against which the Committment is being logged.

Title of the commitment.

How long before the Commitment expires will the owner will be warned. If not set, no prior warning is given.

Contact's first name.

Contact's last name.

Contact's phone number.

Creates a  commitment against a Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function LogCaseCommitment( _
   ByVal _caseIDNum_ As String, _
   ByVal _title_ As String, _
   ByVal _priorWarning_ As TimeSpan, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogCaseCommitment( 
   string _caseIDNum_,
   string _title_,
   TimeSpan _priorWarning_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_
)

#### Parameters

_caseIDNum_

Identifier of the Case against which the Committment is being logged.

_title_

Title of the commitment.

_priorWarning_

How long before the Commitment expires will the owner will be warned. If not set, no prior warning is given.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Log.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseCommitment.md)