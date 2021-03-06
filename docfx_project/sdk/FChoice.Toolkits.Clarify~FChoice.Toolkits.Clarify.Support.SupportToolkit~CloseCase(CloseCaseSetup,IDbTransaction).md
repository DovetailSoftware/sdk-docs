﻿### CloseCase(CloseCaseSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Closes the specified Case that is currently open. This overload takes a setup object and a database transaction.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CloseCase( _
   ByVal _setupParam_ As CloseCaseSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult CloseCase( 
   CloseCaseSetup _setupParam_,
   IDbTransaction _transaction_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

If the [CloseSums](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup~CloseSums.md) property is not set, the API will automatically calculate the log summation for the Case.

Example

[**Developer Walkthrough - Transaction Support**](../articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CloseCase.md)