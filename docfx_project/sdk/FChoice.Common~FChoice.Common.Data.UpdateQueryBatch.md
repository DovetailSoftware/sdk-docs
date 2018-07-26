### UpdateQueryBatch Class

Helper class for grouping INSERT and UPDATE statements together into a single batch without concern for the underlying database type's support for statement batching

Syntax

```vbnet
'Declaration

Public Class UpdateQueryBatch 
```

```csharp
public class UpdateQueryBatch 
```

Remarks

Grouping a number of statements into a single batch can present a challenge if those statements are parameterized query/update/insert statements. This class helps keep the parameter names unique as well as abstracting the execution details of executing all the statements in a single transaction and single database round-trip. If the provider does not support statement batching, statements will be executed one-by-one.

Inheritance Hierarchy

System.Object  
   **FChoice.Common.Data.UpdateQueryBatch**  

#### Requirements

**Namespace:** [FChoice.Common.Data](FChoice.Common~FChoice.Common.Data_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)