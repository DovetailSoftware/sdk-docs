### NumberOps Enumeration

Valid numeric filtering operations for methods such as [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,NumberOps,Int32).md).

#### Syntax

```vbnet
'Declaration

Public Enum NumberOps 
   Inherits System.Enum
```

```csharp
public enum NumberOps : System.Enum 
```

Members

| Member | Description |
| --- | --- |
| **Equals** |   |
| **LessThan** | Return rows where the selected field is less than the given number. |
| **LessThanOrEqual** | Return rows where the selected field is less than or equal to the given number. |
| **MoreThan** | Return rows where the selected field is more than the given number. |
| **MoreThanOrEqual** | Return rows where the selected field is more than or equal to the given number. |
| **NotEquals** | Return rows where the selected field does not equal the given number. |
| **OlderThanDays** | The selected field must be a datetime. The filter will return rows that are <N> days or older. Where <N> is the given number. |
| **OlderThanHours** | The selected field must be a datetime. The filter will return rows that are <N> hours or older. Where <N> is the given number. |
| **WithinDays** | The selected field must be a datetime. The filter will return rows that occurred are within the given number of days before or after. |
| **WithinHours** | The selected field must be a datetime. The filter will return rows that occurred are within the given number of hours before or after. |

#### Inheritance Hierarchy

System.Object  
System.ValueType  
System.Enum  
**FChoice.Foundation.NumberOps**  

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)