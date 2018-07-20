### ConfigValues Class

ConfigValues Class

ConfigValues is a collection of string constants used for strongly-typing the keys used to access the common configuration items in the [FCConfiguration](FChoice.Common~FChoice.Common.FCConfiguration.md) collection.

Syntax

```vbnet
'Declaration

Public MustInherit NotInheritable Class ConfigValues 
```

```csharp
public static class ConfigValues 
```

Remarks

ConfigValues is used similar to .NET enumeration type.

Example

```csharp
string connStr = FCConfiguration.Current[ConfigValues.CONNECT_STRING];
```

```vbnet
Dim connStr As String = FCConfiguration.Current(ConfigValues.CONNECT_STRING)
```

Inheritance Hierarchy

System.Object  

**FChoice.Common.ConfigValues**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)



#### Reference

[ConfigValues Members](FChoice.Common~FChoice.Common.ConfigValues_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)