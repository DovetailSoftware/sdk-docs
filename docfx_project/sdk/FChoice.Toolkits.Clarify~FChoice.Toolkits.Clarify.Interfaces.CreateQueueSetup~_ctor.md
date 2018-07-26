### CreateQueueSetup Constructor

Title of the Queue

Should Queue allow CRs

Should Queue allow Cases

Should Queue allow Contracts

Should Queue allow Dialogs

Should Queue allow Demand Details

Should Queue allow Jobs

Should Queue allow Opportunities

Should Queue allow Solutions

Should Queue allow Subcases

Should Queue allow Action Items

Initializes a new instance of the CreateQueueSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _title_ As String, _
   ByVal _allowCR_ As Boolean, _
   ByVal _allowCase_ As Boolean, _
   ByVal _allowContract_ As Boolean, _
   ByVal _allowDialogue_ As Boolean, _
   ByVal _allowDemandDetail_ As Boolean, _
   ByVal _allowJob_ As Boolean, _
   ByVal _allowOpportunity_ As Boolean, _
   ByVal _allowSolution_ As Boolean, _
   ByVal _allowSubcase_ As Boolean, _
   ByVal _allowActionItem_ As Boolean _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateQueueSetup( 
   string _title_,
   bool _allowCR_,
   bool _allowCase_,
   bool _allowContract_,
   bool _allowDialogue_,
   bool _allowDemandDetail_,
   bool _allowJob_,
   bool _allowOpportunity_,
   bool _allowSolution_,
   bool _allowSubcase_,
   bool _allowActionItem_
)
```

#### Parameters

_title_

Title of the Queue

_allowCR_

Should Queue allow CRs

_allowCase_

Should Queue allow Cases

_allowContract_

Should Queue allow Contracts

_allowDialogue_

Should Queue allow Dialogs

_allowDemandDetail_

Should Queue allow Demand Details

_allowJob_

Should Queue allow Jobs

_allowOpportunity_

Should Queue allow Opportunities

_allowSolution_

Should Queue allow Solutions

_allowSubcase_

Should Queue allow Subcases

_allowActionItem_

Should Queue allow Action Items

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateQueueSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateQueueSetup.md)  
[CreateQueueSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateQueueSetup_members.md)