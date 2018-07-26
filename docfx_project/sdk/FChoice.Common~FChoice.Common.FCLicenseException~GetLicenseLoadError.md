### GetLicenseLoadError Method

This method is intended to be used internally by First Choice .NET products.

Syntax

```vbnet
'Declaration

Public Shared Function GetLicenseLoadError( _
   ByVal _ex_ As Exception, _
   ByVal _errorId_ As Integer, _
   ByVal _reason_ As FCLicenseException.LoadFailReasons _
) As FCLicenseException
```

```csharp
public static FCLicenseException GetLicenseLoadError( 
   Exception _ex_,
   int _errorId_,
   FCLicenseException.LoadFailReasons _reason_
)
```

#### Parameters

_ex_

_errorId_

_reason_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCLicenseException Class](FChoice.Common~FChoice.Common.FCLicenseException.md)  
[FCLicenseException Members](FChoice.Common~FChoice.Common.FCLicenseException_members.md)