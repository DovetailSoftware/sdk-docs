### Execute Method (UpdateQueryBatch)

Executes the batch if the provider supports statement batching, or nothing if it doesn't

Syntax

```vbnet
' Declaration

Public Function Execute() As Integer

public int Execute()

#### Return Value

The number of rows affected, if available, or -2 if no statements were executed

Remarks

Not all providers support returning the number of rows affected in all circumstances. Different providers return different results in this case. Usually the number is -1 or 0. Otherwise, the number should be a positive number indicating the number of rows inserted and/or updated.

**IMPORTANT**: The UpdateQueryBatch does not commit or rollback the transaction instance. It is the responsibility of the caller to ensure that the transaction is properly set up and finished after the batch is executed.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)