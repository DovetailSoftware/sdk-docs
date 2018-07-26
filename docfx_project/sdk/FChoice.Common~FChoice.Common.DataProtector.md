### DataProtector Class

Provides easy access to the Windows Data Protection API (DPAPI) for encrypting and decrypting data values

Syntax

```vbnet
'Declaration

Public NotInheritable Class DataProtector 
```

```csharp
public sealed class DataProtector 
```

Remarks

**![warning](/images/warning.gif) WARNING**:  The encryption produced by this class is only usable from the machine on which the encryption occurred. The encrypted text cannot be used by a different computer.

For more information on Windows Data Protection, please see this technical article on MSDN called [Windows Data Protection](http://msdn.microsoft.com/library/en-us/dnsecure/html/windataprotection-dpapi.asp).

Inheritance Hierarchy

System.Object  
   **FChoice.Common.DataProtector**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[DataProtector Members](FChoice.Common~FChoice.Common.DataProtector_members.md)  
[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)