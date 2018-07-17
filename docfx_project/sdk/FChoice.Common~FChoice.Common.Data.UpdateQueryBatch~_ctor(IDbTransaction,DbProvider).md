     UpdateQueryBatch Constructor(IDbTransaction,DbProvider)                                                   

UpdateQueryBatch Constructor(IDbTransaction,DbProvider)

An open, live transaction in which this batch will participate

The provider to use for any database-type-specific operations that UpdateQueryBatch may need to perform

Creates a new instance of a query batch using the specified transaction and a specific provider

Syntax

```vbnet
```csharp

'Declaration
 

Public Function New( _
   ByVal _trans_ As [IDbTransaction](#), _
   ByVal _prov_ As [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) _
)

public UpdateQueryBatch( 
   [IDbTransaction](#) _trans_,
   [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) _prov_
)

#### Parameters

_trans_

An open, live transaction in which this batch will participate

_prov_

The provider to use for any database-type-specific operations that UpdateQueryBatch may need to perform

Remarks

The transaction must be open and ready against an open database connection.

**IMPORTANT**: The UpdateQueryBatch does not commit or rollback the transaction instance. It is the responsibility of the caller to ensure that the transaction is properly set up and finished after the batch is executed.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch~_ctor.md)