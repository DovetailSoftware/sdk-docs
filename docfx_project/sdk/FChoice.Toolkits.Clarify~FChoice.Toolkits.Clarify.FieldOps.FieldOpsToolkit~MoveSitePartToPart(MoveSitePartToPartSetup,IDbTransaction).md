### MoveSitePartToPart(MoveSitePartToPartSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to move an existing site part from its current location to underneath another site part within the Clarify site configuration. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function MoveSitePartToPart( _
   ByVal _setupParam_ As [MoveSitePartToPartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.MoveSitePartToPartSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) MoveSitePartToPart( 
   [MoveSitePartToPartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.MoveSitePartToPartSetup.md) _setupParam_,
   IDbTransaction _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The site part to be moved must be current (not de-installed).

When a site_part is moved, all sub-site_parts underneath it are also moved.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToPart.md)