### StartTransaction

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Function StartTransaction(Optional ByVal IsolationLevel As String)

**Description**

Call this method when it is desired to have FCGeneric updates and queries be under the context of a transaction. When all database operations for the transaction are complete, call CommitTransaction. Care should be taken using exception handling to invoke RollbackTransaction in the case of an error.  
  
Valid IsolationLevel parameter strings match the .Net Framework [Isolation Level Enumeration](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpref/html/frlrfSystemDataIsolationLevelClassTopic.asp)

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- | 
| isolationLevel | No | An optional parameter for controlling the Isolation Level of the transation. |

**Example**

Please see [Developer Walkthrough - Transaction support](../../articles/walkthroughs/transaction.md)