### DataProtectionStore Enumeration

DataProtectionStore is used with the [DataProtector](FChoice.Common~FChoice.Common.DataProtector.md) when encrypting or decrypting data. DataProtectionStore tells the DataProtector which key store to use.

Syntax

```vbnet
' Declaration

Public Enum DataProtectionStore 
   Inherits System.Enum

public enum DataProtectionStore : System.Enum 

Members

| Member | Description |
| --- | --- |
| **UseMachineStore** | Specifies that the DataProtector should use the machine key store. This means that data encrypted with this key can be decrypted by any user on this machine. The key will not work on any other computer. |
| **UseUserStore** | Specifies that the DataProtector should use the user key store. This means that data encrypted with this key can be decrypted by ONLY this user and ONLY on this computer. |

Inheritance Hierarchy

System.Object  
   System.ValueType  
      System.Enum  
         **FChoice.Common.DataProtectionStore**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)



#### Reference

[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)