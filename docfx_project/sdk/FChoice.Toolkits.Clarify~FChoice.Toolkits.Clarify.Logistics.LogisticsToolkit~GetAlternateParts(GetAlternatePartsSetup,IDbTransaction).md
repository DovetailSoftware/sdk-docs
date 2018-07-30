### GetAlternateParts(GetAlternatePartsSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Builds a list of the alternate parts (table_partnum_view) for the specified part and revision, and returns an array of part Objids This overload takes a setup object and a database transaction.

#### Syntax

```vbnet
'Declaration

Public Overloads Function GetAlternateParts( _
   ByVal _setupParam_ As GetAlternatePartsSetup, _
   ByVal _transaction_ As IDbTransaction _
) As GetAlternatePartsResult
```

```csharp
public GetAlternatePartsResult GetAlternateParts( 
   GetAlternatePartsSetup _setupParam_,
   IDbTransaction _transaction_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A GetAlternatePartsResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Example

[**Developer Walkthrough - Transaction Support**](../articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~GetAlternateParts.md)