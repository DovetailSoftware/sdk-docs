     LogCaseResearch(String,TimeSpan) Method                                                   

fcSDK Documentation

LogCaseResearch(String,TimeSpan) Method

Identifier of the Case against which the research note is being logged.

The length of time for research.

Creates a research log against a Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogCaseResearch( _
   ByVal _caseIDNum_ As String, _
   ByVal _researchDuration_ As [TimeSpan](#) _
) As [LogCaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult.md)

public [LogCaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult.md) LogCaseResearch( 
   string _caseIDNum_,
   [TimeSpan](#) _researchDuration_
)

#### Parameters

_caseIDNum_

Identifier of the Case against which the research note is being logged.

_researchDuration_

The length of time for research.

#### Return Value

The following values are populated in the [LogCaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult~Objid.md) \- The Objid of the Log.
*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchResult~StatusChangeObjid.md) \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseResearch.md)