### Logger Class

Logger is used by classes throughout First Choice .NET-based products to write logging entries.

#### Syntax

```vbnet
'Declaration

Public Class Logger 
```

```csharp
public class Logger 
```

#### Remarks

Use [LogManager.GetLogger](FChoice.Common~FChoice.Common.LogManager~GetLogger.md) to retrieve a specific logger. Once an instance is obtained, use the various Log methods to write logging events to configured logging appenders.

#### Inheritance Hierarchy

System.Object  
   **FChoice.Common.Logger**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[Logger Members](FChoice.Common~FChoice.Common.Logger_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)