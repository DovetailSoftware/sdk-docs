### LogSubcaseResearch(String,TimeSpan) Method

Identifier of the Subcase against which the research note is being logged.

The length of time for research.

Creates a research log against a Subcase. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcaseResearch( _
   ByVal _subcaseIDNum_ As String, _
   ByVal _researchDuration_ As TimeSpan _
) As LogSubcaseResearchResult
```

```csharp
public LogSubcaseResearchResult LogSubcaseResearch( 
   string _subcaseIDNum_,
   TimeSpan _researchDuration_
)
```

#### Parameters

_subcaseIDNum_

Identifier of the Subcase against which the research note is being logged.

_researchDuration_

The length of time for research.

#### Return Value

The following values are populated in the LogSubcaseResearchResult object returned by the API method:

*   CommitmentObjid \- The Objid of the Commitment.
*   StatusChangeObjid \- The Objid of the StatusChange.
*   Objid \- The Objid of the Log.

Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseResearch.md)