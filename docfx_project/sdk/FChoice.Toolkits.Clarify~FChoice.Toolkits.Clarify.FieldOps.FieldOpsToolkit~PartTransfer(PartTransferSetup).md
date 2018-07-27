### PartTransfer(PartTransferSetup) Method

Setup object for API invocation.

#### Syntax

```vbnet
'Declaration

Public Overloads Function PartTransfer( _
   ByVal _setupParam_ As PartTransferSetup _
) As PartTransferResult
```

```csharp
public PartTransferResult PartTransfer( 
   PartTransferSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the PartTransferResult object returned by the API method:

*   StandardCost \- Part Transfer Standard Cost.
*   TransactionIDNum \- Part Transfer Transaction Identifier.
*   Objid \- Objid of the Part Transfer record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~PartTransfer.md)  
[PartTransferSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.PartTransferSetup.md)