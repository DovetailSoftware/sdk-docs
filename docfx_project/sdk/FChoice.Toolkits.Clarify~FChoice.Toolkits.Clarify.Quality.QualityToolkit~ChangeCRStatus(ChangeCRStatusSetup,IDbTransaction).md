﻿### ChangeCRStatus(ChangeCRStatusSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Change the status of a CR. This overload takes a setup object and a database transaction.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangeCRStatus( _
   ByVal _setupParam_ As ChangeCRStatusSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangeCRStatus( 
   ChangeCRStatusSetup _setupParam_,
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

Example

[**Developer Walkthrough - Transaction Support**](../articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ChangeCRStatus.md)