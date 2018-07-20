### LogSubcaseCommitmentSetup Constructor

Identifier of the Subcase against which the commitment is being logged.

Title of the commitment.

The length of time preceding the commitment expiration in which the owner will be warned. If not set, no prior warning is given.

Contact's first name.

Contact's last name.

Contact's phone number.

Initializes a new instance of the LogSubcaseCommitmentSetup class.

Syntax

```vbnet
' Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _subcaseIDNum_ As String, _
   ByVal _title_ As String, _
   ByVal _priorWarning_ As TimeSpan, _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String _
)

[ConstructorIndexAttribute()]
public LogSubcaseCommitmentSetup( 
   string _subcaseIDNum_,
   string _title_,
   TimeSpan _priorWarning_,
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_
)

#### Parameters

_subcaseIDNum_

Identifier of the Subcase against which the commitment is being logged.

_title_

Title of the commitment.

_priorWarning_

The length of time preceding the commitment expiration in which the owner will be warned. If not set, no prior warning is given.

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogSubcaseCommitmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseCommitmentSetup.md)  
[LogSubcaseCommitmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseCommitmentSetup_members.md)