### CheckClearQualityTransition(CheckClearQualityTransitionSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Determine if a user can change status from an old condition/status to a new condition/status. This overload takes a setup object and a database transaction.

Syntax

```vbnet
'Declaration

Public Overloads Function CheckClearQualityTransition( _
   ByVal _setupParam_ As CheckClearQualityTransitionSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult CheckClearQualityTransition( 
   CheckClearQualityTransitionSetup _setupParam_,
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

Remarks

Checks the transitions as set up in Clarify’s Policies & Customers.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CheckClearQualityTransition.md)