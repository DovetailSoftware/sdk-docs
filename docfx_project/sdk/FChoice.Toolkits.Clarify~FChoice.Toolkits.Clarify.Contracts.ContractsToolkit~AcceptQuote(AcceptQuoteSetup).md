﻿### AcceptQuote(AcceptQuoteSetup) Method

Setup object for API invocation.

Accept the specified Quote from the queue in which it is currently dispatched. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AcceptQuote( _
   ByVal _setupParam_ As AcceptQuoteSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptQuote( 
   AcceptQuoteSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Quote must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AcceptQuote.md)  
[AcceptQuoteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AcceptQuoteSetup.md)