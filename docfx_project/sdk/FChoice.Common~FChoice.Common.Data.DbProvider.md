### DbProvider Class

Abstract base class for database providers used by [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) and applications.

#### Syntax

```vbnet
'Declaration
Public MustInherit Class DbProvider 
```

```csharp
public abstract class DbProvider 
```

#### Remarks

Inherit from this class to provide custom database access to an unsupported database type, or to replace the behavior of a built-in/supported database type.

**IMPORTANT**: This abstract base class and all intrinsic providers are thread safe. Custom provider implementations should also be thread safe.

#### Inheritance Hierarchy

System.Object  
   **FChoice.Common.Data.DbProvider**  
      [FChoice.Common.Data.OleDbDataProviderBase](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase.md)  
      [FChoice.Common.Data.OracleProviderBase](FChoice.Common~FChoice.Common.Data.OracleProviderBase.md)  

#### Requirements

**Namespace:** [FChoice.Common.Data](FChoice.Common~FChoice.Common.Data_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)