### SqlHelper Class

Provides a convenience and data provider-agnostic wrapper around ADO.NET

#### Syntax

```vbnet
'Declaration

Public Class SqlHelper 
```

```csharp
public class SqlHelper 
```

#### Remarks

SqlHelper can be used either as an instance or statically.

When used statically, SqlHelper is thread safe. Concurrent threads can call the same method at the same time and will experience no ill-effect.

When used as an instance, however, SqlHelper is **NOT** thread safe. Multiple threads should not use the same instance of SqlHelper.

#### Inheritance Hierarchy

System.Object  
   **FChoice.Common.Data.SqlHelper**  

#### Requirements

**Namespace:** [FChoice.Common.Data](FChoice.Common~FChoice.Common.Data_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)