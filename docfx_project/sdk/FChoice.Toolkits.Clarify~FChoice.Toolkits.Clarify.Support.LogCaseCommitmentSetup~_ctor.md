     LogCaseCommitmentSetup Constructor                                                   

fcSDK Documentation

LogCaseCommitmentSetup Constructor

Identifier of the Case against which the Committment is being logged.

Title of the commitment.

How long before the Commitment expires will the owner will be warned. If not set, no prior warning is given.

Contact's first name.

Contact's last name.

Contact's phone number.

Initializes a new instance of the LogCaseCommitmentSetup class.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _caseIDNum_ As String, _
   ByVal _title_ As String, _
   ByVal _priorWarning_ As [TimeSpan](#), _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public LogCaseCommitmentSetup( 
   string _caseIDNum_,
   string _title_,
   [TimeSpan](#) _priorWarning_,
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

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogCaseCommitmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseCommitmentSetup.md)  
[LogCaseCommitmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseCommitmentSetup_members.md)