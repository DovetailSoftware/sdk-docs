### OracleProviderBase Class

Abstract base class for Oracle-based data providers

#### Syntax

```vbnet
'Declaration

Public MustInherit Class OracleProviderBase 
   Inherits DbProvider
```

```csharp
public abstract class OracleProviderBase : DbProvider
```

#### Remarks

Inherit from this class to implement a data provider based on the OracleClient in ADO.NET or other Oracle ADO.NET implementations (such as Oracle's ODP.NET).

#### Inheritance Hierarchy

System.Object  
   [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
      **FChoice.Common.Data.OracleProviderBase**  
         [FChoice.Common.Data.ODPOracleProvider](FChoice.Common~FChoice.Common.Data.ODPOracleProvider.md)  

#### Requirements

**Namespace:** [FChoice.Common.Data](FChoice.Common~FChoice.Common.Data_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[OracleProviderBase Members](FChoice.Common~FChoice.Common.Data.OracleProviderBase_members.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)