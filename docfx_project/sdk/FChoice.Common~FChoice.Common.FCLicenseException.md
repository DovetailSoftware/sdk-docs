     FCLicenseException Class                                                   

FCLicenseException Class

FCLicenseException is used when a licensed product attempts to obtain a license key from the installed set of keys and either cannot find its key or an error occurs retreiving the list of licenses.

Syntax

```vbnet
```csharp

'Declaration
 

<SerializableAttribute()>
Public Class FCLicenseException 
   Inherits [FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md)

\[SerializableAttribute()\]
public class FCLicenseException : [FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md) 

Inheritance Hierarchy

[System.Object](#)  
   [System.Exception](#)  
      [System.ApplicationException](#)  
         [FChoice.Common.FCExceptionBase](FChoice.Common~FChoice.Common.FCExceptionBase.md)  
            **FChoice.Common.FCLicenseException**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

See Also

#### Reference

[FCLicenseException Members](FChoice.Common~FChoice.Common.FCLicenseException_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)