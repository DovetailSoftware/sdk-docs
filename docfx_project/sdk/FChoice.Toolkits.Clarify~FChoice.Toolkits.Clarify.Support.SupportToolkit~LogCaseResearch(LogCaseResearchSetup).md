### LogCaseResearch(LogCaseResearchSetup) Method

Setup object for API invocation.

Creates a research log against a Case. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogCaseResearch( _
   ByVal _setupParam_ As LogCaseResearchSetup _
) As LogCaseResearchResult
```

```csharp
public LogCaseResearchResult LogCaseResearch( 
   LogCaseResearchSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the LogCaseResearchResult object returned by the API method:

*   Objid \- The Objid of the Log.
*   StatusChangeObjid \- The Objid of the StatusChange.
*   CommitmentObjid \- The Objid of the Commitment.

#### Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseResearch.md)  
[LogCaseResearchSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseResearchSetup.md)