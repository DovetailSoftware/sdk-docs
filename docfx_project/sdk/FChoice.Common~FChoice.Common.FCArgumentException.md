### FCArgumentException Class

FCArgumentException is used to signify that parameters passed into APIs are invalid. It has several static (**Shared** in Visual Basic) methods that make handling required parameters easier.

#### Syntax

```vbnet
'Declaration

<SerializableAttribute()>
Public Class FCArgumentException 
   Inherits CommonException
```

```csharp
[SerializableAttribute()]
public class FCArgumentException : CommonException 
```

#### Remarks

Please see the three main static (**Shared** in Visual Basic) on this class for information on how to help protect your APIs against invalid input data: [CheckIndexBounds](FChoice.Common~FChoice.Common.FCArgumentException~CheckIndexBounds.md), [CheckIsEmpty](FChoice.Common~FChoice.Common.FCArgumentException~CheckIsEmpty.md), [CheckIsNull](FChoice.Common~FChoice.Common.FCArgumentException~CheckIsNull.md).

#### Inheritance Hierarchy

System.Object  
System.Exception  
[System.ApplicationException](#)  
[FChoice.Common.FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
[FChoice.Common.CommonException](FChoice.Common~FChoice.Common.CommonException.md)  
**FChoice.Common.FCArgumentException**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[FCArgumentException Members](FChoice.Common~FChoice.Common.FCArgumentException_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)