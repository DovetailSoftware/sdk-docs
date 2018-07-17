     Query(IDbTransaction) Method                                                   

fcSDK Documentation

Query(IDbTransaction) Method

An active/open database [IDbTransaction](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbTransactionClassTopic.htm) object in which this query will participate.

Causes the generic object to query the database table or view using the specified active transaction and, optionally, specified data fields, filters, and sort orders

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads MustOverride Sub Query( _
   ByVal _transaction_ As [IDbTransaction](#) _
) 

public abstract void Query( 
   [IDbTransaction](#) _transaction_
)

#### Parameters

_transaction_

An active/open database [IDbTransaction](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbTransactionClassTopic.htm) object in which this query will participate.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~Query.md)