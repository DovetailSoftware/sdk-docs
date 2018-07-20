### DeleteLocationServicingSite Method

Used to remove the relationship between a site and a location servicing it. This overload takes a set of required parameters for the API.

Used to remove the relationship between a site and a location servicing it.

Overload List

| Overload | Description |
| --- | --- |
| [DeleteLocationServicingSite(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~DeleteLocationServicingSite(String,String).md) | Used to remove the relationship between a site and a location servicing it. This overload takes a set of required parameters for the API.   |
| [DeleteLocationServicingSite(DeleteLocationServicingSiteSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~DeleteLocationServicingSite(DeleteLocationServicingSiteSetup).md) | Used to remove the relationship between a site and a location servicing it. This overload takes a setup object.   |
| [DeleteLocationServicingSite(DeleteLocationServicingSiteSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~DeleteLocationServicingSite(DeleteLocationServicingSiteSetup,IDbTransaction).md) | Used to remove the relationship between a site and a location servicing it. This overload takes a setup object and a database transaction.   |

Remarks

As a result of a call to this API, all of the other locations that service this site will have their ranks changed as necessary.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.DeleteLocationServicingSiteSetup", Caption="DeleteLocationServicingSiteSetup Class"**