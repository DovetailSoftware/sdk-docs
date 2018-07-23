### GetLocationsServicingSite(GetLocationsServicingSiteSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Returns a list of the locations (in the proper order) servicing this site. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function GetLocationsServicingSite( _
   ByVal _setupParam_ As [GetLocationsServicingSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [GetLocationsServicingSiteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteResult.md)

public [GetLocationsServicingSiteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteResult.md) GetLocationsServicingSite( 
   [GetLocationsServicingSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [GetLocationsServicingSiteResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.GetLocationsServicingSiteResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~GetLocationsServicingSite.md)