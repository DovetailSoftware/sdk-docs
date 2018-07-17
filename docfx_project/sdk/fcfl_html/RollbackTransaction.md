### RollbackTransaction

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Function RollbackTransaction()

**Description**

If StartTransaction() has previously been called. This method needs to be called if for some reason the transaction cannot be committed.  
  
A rollback is necessary when an exception occurs during the lifetime of the transaction or some condition such that it is desired to return the database back to its pre-transaction state.  
  
Care should be made when using database transactions to make sure all possible paths of code protect for thrown exceptions to avoid leaving an uncompleted transactions hanging around.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

**Example**

Please see [Developer Walkthrough - Transaction support](/articles/walkthroughs/transaction.md)