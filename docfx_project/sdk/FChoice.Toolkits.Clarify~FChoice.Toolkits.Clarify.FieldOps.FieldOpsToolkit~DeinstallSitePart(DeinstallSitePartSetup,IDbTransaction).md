### DeinstallSitePart(DeinstallSitePartSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to de-install a site part (and the sub-parts installed underneath it) from a site. This overload takes a setup object and a database transaction.

Syntax

```vbnet
'Declaration

Public Overloads Function DeinstallSitePart( _
   ByVal _setupParam_ As DeinstallSitePartSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult DeinstallSitePart( 
   DeinstallSitePartSetup _setupParam_,
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

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~DeinstallSitePart.md)