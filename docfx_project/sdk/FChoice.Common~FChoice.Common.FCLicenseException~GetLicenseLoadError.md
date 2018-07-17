     GetLicenseLoadError Method                                                   

GetLicenseLoadError Method

This method is intended to be used internally by First Choice .NET products.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Function GetLicenseLoadError( _
   ByVal _ex_ As [Exception](#), _
   ByVal _errorId_ As [Integer](#), _
   ByVal _reason_ As [FCLicenseException.LoadFailReasons](FChoice.Common~FChoice.Common.FCLicenseException+LoadFailReasons.md) _
) As [FCLicenseException](FChoice.Common~FChoice.Common.FCLicenseException.md)

public static [FCLicenseException](FChoice.Common~FChoice.Common.FCLicenseException.md) GetLicenseLoadError( 
   [Exception](#) _ex_,
   [int](#) _errorId_,
   [FCLicenseException.LoadFailReasons](FChoice.Common~FChoice.Common.FCLicenseException+LoadFailReasons.md) _reason_
)

#### Parameters

_ex_

_errorId_

_reason_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCLicenseException Class](FChoice.Common~FChoice.Common.FCLicenseException.md)  
[FCLicenseException Members](FChoice.Common~FChoice.Common.FCLicenseException_members.md)