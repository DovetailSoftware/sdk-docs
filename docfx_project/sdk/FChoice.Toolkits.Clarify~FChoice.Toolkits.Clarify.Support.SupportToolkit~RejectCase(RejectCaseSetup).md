﻿### RejectCase(RejectCaseSetup) Method

Setup object for API invocation.

Reject the Case from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function RejectCase( _
   ByVal _setupParam_ RejectCaseSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult RejectCase( 
   RejectCaseSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Case must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectCase.md)  
[RejectCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectCaseSetup.md)