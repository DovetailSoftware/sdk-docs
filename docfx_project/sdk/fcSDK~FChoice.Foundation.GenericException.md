### GenericException Class

The exception that is thrown when an error occurs in the [Generic](fcSDK~FChoice.Foundation.FCGeneric.md) classes in Foundation.

#### Syntax

```vbnet
'Declaration

<SerializableAttribute()>
Public Class GenericException 
   Inherits FoundationException
```

```csharp
[SerializableAttribute()]
public class GenericException : FoundationException
```

#### Inheritance Hierarchy

System.Object  
   System.Exception  
      [System.ApplicationException](#)  
         [FChoice.Common.FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
            [FChoice.Foundation.FoundationException](fcSDK~FChoice.Foundation.FoundationException.md)  
               **FChoice.Foundation.GenericException**  
                  [FChoice.Foundation.Clarify.ClarifyGenericException](fcSDK~FChoice.Foundation.Clarify.ClarifyGenericException.md)  

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[GenericException Members](fcSDK~FChoice.Foundation.GenericException_members.md)  
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)