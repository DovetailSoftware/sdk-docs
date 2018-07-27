### FoundationException Class

The exception that is thrown when an error occurs in Foundation.

#### Syntax

```vbnet
'Declaration

<SerializableAttribute()>
Public Class FoundationException 
   Inherits FChoice.Common.FCExceptionBase
```

```csharp
[SerializableAttribute()]
public class FoundationException : FChoice.Common.FCExceptionBase 
```

#### Inheritance Hierarchy

System.Object  
   System.Exception  
      [System.ApplicationException](#)  
         [FChoice.Common.FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
            **FChoice.Foundation.FoundationException**  
               [FChoice.Foundation.FCInvalidLoginException](fcSDK~FChoice.Foundation.FCInvalidLoginException.md)  
               [FChoice.Foundation.GenericException](fcSDK~FChoice.Foundation.GenericException.md)  

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[FoundationException Members](fcSDK~FChoice.Foundation.FoundationException_members.md)  
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)