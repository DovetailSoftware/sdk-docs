     Query(IDbTransaction) Method                                                   

fcSDK Documentation

Query(IDbTransaction) Method

An active/open database [IDbTransaction](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbTransactionClassTopic.htm) object in which this query will participate.

Causes the generic object to query the database table or view using the specified active transaction and, optionally, specified data fields, filters, and sort orders

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Overrides Sub Query( _
   ByVal _transaction_ As [IDbTransaction](#) _
) 

public override void Query( 
   [IDbTransaction](#) _transaction_
)

#### Parameters

_transaction_

An active/open database [IDbTransaction](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbTransactionClassTopic.htm) object in which this query will participate.

Remarks

**NOTE**: This method is provided to support the [Query Method](fcSDK~FChoice.Foundation.GenericDataSet~Query.md) on [ClarifyDataSet](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md) and is not intended for direct use. However, if needed, please consider the following information about specifying a transaction. The provided [IDbTransaction](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbTransactionClassTopic.htm) is expected to be open, connected, and live. Once this generic's query is complete, the transaction will **NOT** be closed or committed. If an error occurs, the transaction will be rolled back and an exception thrown.

This method causes the generic object to query the database table or view using any specified data fields, filters, and/or sort orders. The query retrieves 0 or more rows.

For more information on controlling the number and type of fields returned, see the [DataFields](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md) property documentation. To restrict a query by adding filters, see the documentation for the [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter.md) method overloads. To control the order in which rows are sorted, see the [AppendSort](fcSDK~FChoice.Foundation.FCGeneric~AppendSort.md) method documentation.

**NOTE**: If you have traversed child objects from this generic, all children in the hierarchy will also be queried when this method is called. For example, if you wish to query the case object for one specific case, but also wish to get all related activity logs and the related contact, you would set up the case, activity_log, and contact generic objects (see example), and would only have to query the case generic object.

If more than one object that is to be queried at the same time and are not related, use the [Query Method](fcSDK~FChoice.Foundation.GenericDataSet~Query.md) on the [ClarifyDataSet](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md) instance from which this generate was created to ensure that the queries are optimized and are executed in the same transaction.

Example

This example shows how to set up several generics in a hierarchy, query the parent and then iterate through the rows and display the results of the query.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~Query.md)  
[Base Implementation in Query(IDbTransaction)](fcSDK~FChoice.Foundation.FCGeneric~Query(IDbTransaction).md)