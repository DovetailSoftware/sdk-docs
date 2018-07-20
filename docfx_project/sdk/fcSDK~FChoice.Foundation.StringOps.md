### StringOps Enumeration

Valid string filtering operations for methods such as [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,StringOps,String).md).

Syntax

```vbnet
'Declaration

Public Enum StringOps 
   Inherits System.Enum
```

```csharp
public enum StringOps : System.Enum 
```

Members

| Member | Description |
| --- | --- |
| **Contains** | Return rows where the selected field contains the given string. |
| **EndsWith** | Return rows where the selected field ends with the given string. |
| **Equals** |   |
| **LessThan** | Return rows where the selected field is alphabetically before the given string. |
| **LessThanOrEqual** | Return rows where the selected field is alphabetically before or equal to the given string. |
| **Like** | Return rows where the selected field is Like the the given string.<br><br>You can use SQL [LIKE expressions](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsqlref/ts_la-lz_115x.asp) but be aware that their behavior may depend on the database you are using. |
| **MoreThan** | Return rows where the selected field is alphabetically after the given string. |
| **MoreThanOrEqual** | Return rows where the selected field is alphabetically after or equal to the given string. |
| **NotContains** | Return rows where the selected field does not contain the given string. |
| **NotEndsWith** | Return rows where the selected field is does not end with the given string. |
| **NotEquals** | Return rows where the selected field is not the given string.
 |
| **NotLike** | Return rows where the selected field is not Like the the given string.<br><br>You can use SQL [LIKE expressions](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/tsqlref/ts_la-lz_115x.asp) but be aware that their behavior may depend on the database you are using. |
| **NotStartsWith** | Return rows where the selected field does not start with the given string. |
| **SoundsLike** | Return rows where the selected field sounds like the given string. |
| **StartsWith** | Return rows where the selected field starts with the given string. |

Inheritance Hierarchy

System.Object  
System.ValueType  
System.Enum  
**FChoice.Foundation.StringOps**  

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)