### Query Method (FCGeneric)

Causes the generic object to query the database table or view using the optionally specified data fields, filters, and sort orders

Causes the generic object to query the database table or view using the optionally specified data fields, filters, and sort orders

Overload List

| Overload | Description |
| --- | --- |
| [Query()](fcSDK~FChoice.Foundation.FCGeneric~Query().md) | Causes the generic object to query the database table or view using the optionally specified data fields, filters, and sort orders   |
| [Query(IDbTransaction)](fcSDK~FChoice.Foundation.FCGeneric~Query(IDbTransaction).md) | Causes the generic object to query the database table or view using the specified active transaction and, optionally, specified data fields, filters, and sort orders   |

Remarks

This method causes the generic object to query the database table or view using any specified data fields, filters, and/or sort orders. The query retrieves 0 or more rows.

For more information on controlling the number and type of fields returned, see the [DataFields](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md) property documentation. To restrict a query by adding filters, see the documentation for the [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md) method overloads. To control the order in which rows are sorted, see the [AppendSort](fcSDK~FChoice.Foundation.FCGeneric~AppendSort.md) method documentation.

**NOTE**: If you have traversed child objects from this generic, all children in the hierarchy will also be queried when this method is called. For example, if you wish to query the case object for one specific case, but also wish to get all related activity logs and the related contact, you would set up the case, activity_log, and contact generic objects (see example), and would only have to query the case generic object.

If more than one object that is to be queried at the same time and are not related, use the [Query Method](fcSDK~FChoice.Foundation.GenericDataSet~Query.md) on the [ClarifyDataSet](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md) instance from which this generate was created to ensure that the queries are optimized and are executed in the same transaction.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)