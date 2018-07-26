### DataSetSurrogate Class

Reads or writes a DataSet as a compact binary stream.

Syntax

```vbnet
'Declaration

Public Class DataSetSurrogate 
```

```csharp
public class DataSetSurrogate 
```

Remarks

**IMPORTANT**: The [ReadBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~ReadBinary.md) and [WriteBinary](FChoice.Common~FChoice.Common.Data.DataSetSurrogate~WriteBinary.md) methods only support simple DataSets with tables, columns, rows (with data) and relationships. All other information will be lost. This includes keys, constraints, extended properties, etc.

Inheritance Hierarchy

System.Object  
   **FChoice.Common.Data.DataSetSurrogate**  

#### Requirements

**Namespace:** [FChoice.Common.Data](FChoice.Common~FChoice.Common.Data_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)



#### Reference

[DataSetSurrogate Members](FChoice.Common~FChoice.Common.Data.DataSetSurrogate_members.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)