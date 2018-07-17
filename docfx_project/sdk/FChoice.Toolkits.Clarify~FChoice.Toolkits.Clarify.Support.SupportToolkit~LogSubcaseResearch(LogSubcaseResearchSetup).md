     LogSubcaseResearch(LogSubcaseResearchSetup) Method                                                   

fcSDK Documentation

LogSubcaseResearch(LogSubcaseResearchSetup) Method

Setup object for API invocation.

Creates a research log against a Subcase. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogSubcaseResearch( _
   ByVal _setupParam_ As [LogSubcaseResearchSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchSetup.md) _
) As [LogSubcaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchResult.md)

public [LogSubcaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchResult.md) LogSubcaseResearch( 
   [LogSubcaseResearchSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [LogSubcaseResearchResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchResult.md) object returned by the API method:

*   [StatusChangeObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchResult~StatusChangeObjid.md) \- The Objid of the StatusChange.
*   [CommitmentObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchResult~CommitmentObjid.md) \- The Objid of the Commitment.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchResult~Objid.md) \- The Objid of the Log.

Remarks

It is possible to create a Commitment with this log. To do so set the [CommitmentDueDate](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchSetup~CommitmentDueDate.md) and [CommitmentTitle](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchSetup~CommitmentTitle.md) and [IsCommitmentToCustomer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchSetup~IsCommitmentToCustomer.md) properties

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubcaseResearch.md)  
[LogSubcaseResearchSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubcaseResearchSetup.md)