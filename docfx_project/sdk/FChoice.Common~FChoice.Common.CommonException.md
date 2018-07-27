# CommonException Class

CommonException Class

CommonException is the exception class used throughout the FChoice.Common and FChoice.Common.Data namespaces. It provides localized error messages with unique error identifiers.

#### Syntax

```vbnet
'Declaration

<SerializableAttribute()>
Public Class CommonException 
   Inherits FCExceptionBase
```

```csharp
[SerializableAttribute()]
public class CommonException : FCExceptionBase
```

#### Remarks

This exception is thrown whenever the FChoice.Common classes encounter problems. They should generally be rare and are usually related to invalid configuration settings or some type of major error from which .NET or First Choice products cannot recover.

#### Inheritance Hierarchy

[System.Object](https://msdn.microsoft.com/en-us/library/e5kfa45b(v=vs.110).aspx)
System.Exception  
[System.ApplicationException](#)  
[FChoice.Common.FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md)  

**FChoice.Common.CommonException**  
[FChoice.Common.FCArgumentException](FChoice.Common~FChoice.Common.FCArgumentException.md)  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[CommonException Members](FChoice.Common~FChoice.Common.CommonException_members.md)
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)