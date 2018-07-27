### DateOps Enumeration

Valid date filtering operations for methods such as [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,DateOps,DateTime).md).

#### Syntax

```vbnet
'Declaration

Public Enum DateOps 
   Inherits System.Enum
```

```csharp
public enum DateOps : System.Enum 
```

Members

| Member | Description |
| --- | --- |
| **After** | Return rows that occur after the given DateTime. |
| **Before** | Return rows that occur before the given DateTime. |
| **Equals** |   |
| **LessThan** | Return rows that occur before the given DateTime. |
| **LessThanOrEqual** | Return rows that occur on or before the given DateTime. |
| **MoreThan** | Return rows that occur after the given DateTime. |
| **MoreThanOrEqual** | Return rows that occur on or after the given DateTime. |
| **NotEquals** | Return rows that do NOT occur on the given DateTime. |
| **On** | Return rows that occur exactly on the given DateTime. |
| **Today** | Return rows that occur on this date. |
| **Tomorrow** | Return rows that occur tomorrow. |
| **Yesterday** | Return rows that occurred yesterday. |

#### Inheritance Hierarchy

System.Object  
System.ValueType  
System.Enum  
**FChoice.Foundation.DateOps**  

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)