### LogSubcaseResearch(LogSubcaseResearchSetup) Method

Setup object for API invocation.

Creates a research log against a Subcase. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function LogSubcaseResearch( _
   ByVal _setupParam_ As LogSubcaseResearchSetup _
) As LogSubcaseResearchResult
```

```csharp
public LogSubcaseResearchResult LogSubcaseResearch( 
   LogSubcaseResearchSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the LogSubcaseResearchResult object returned by the API method:

*   StatusChangeObjid \- The Objid of the StatusChange.
*   CommitmentObjid \- The Objid of the Commitment.
*   Objid \- The Objid of the Log.

#### Remarks

It is possible to create a Commitment with this log. To do so set the CommitmentDueDate and CommitmentTitle and IsCommitmentToCustomer properties

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseResearch.md)  
[LogSubcaseResearchSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchSetup.md)