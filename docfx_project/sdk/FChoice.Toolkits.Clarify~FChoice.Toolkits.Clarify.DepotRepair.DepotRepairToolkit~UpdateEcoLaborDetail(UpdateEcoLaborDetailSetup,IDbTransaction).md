### UpdateEcoLaborDetail(UpdateEcoLaborDetailSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Update an ECO Labor Detail. This overload takes a setup object and a database transaction.

Syntax

```vbnet
'Declaration

Public Overloads Function UpdateEcoLaborDetail( _
   ByVal _setupParam_ As UpdateEcoLaborDetailSetup, _
   ByVal _transaction_ As IDbTransaction _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateEcoLaborDetail( 
   UpdateEcoLaborDetailSetup _setupParam_,
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

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~UpdateEcoLaborDetail.md)