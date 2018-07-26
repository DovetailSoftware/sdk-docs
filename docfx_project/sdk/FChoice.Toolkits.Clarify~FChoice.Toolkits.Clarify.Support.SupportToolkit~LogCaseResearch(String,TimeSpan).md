### LogCaseResearch(String,TimeSpan) Method

Identifier of the Case against which the research note is being logged.

The length of time for research.

Creates a research log against a Case. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function LogCaseResearch( _
   ByVal _caseIDNum_ As String, _
   ByVal _researchDuration_ As TimeSpan _
) As LogCaseResearchResult
```

```csharp
public LogCaseResearchResult LogCaseResearch( 
   string _caseIDNum_,
   TimeSpan _researchDuration_
)
```

#### Parameters

_caseIDNum_

Identifier of the Case against which the research note is being logged.

_researchDuration_

The length of time for research.

#### Return Value

The following values are populated in the LogCaseResearchResult object returned by the API method:

*   Objid \- The Objid of the Log.
*   CommitmentObjid \- The Objid of the Commitment.
*   StatusChangeObjid \- The Objid of the StatusChange.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseResearch.md)