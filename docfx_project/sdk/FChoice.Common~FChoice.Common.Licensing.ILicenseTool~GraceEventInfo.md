### GraceEventInfo Method (ILicenseTool)

Key that identifies a valid First Choice license.

Returns details of the current state of GraceEvents for a given license

Syntax

```vbnet
'Declaration

Function GraceEventInfo( _
   ByVal _licenseKey_ As String _
) As Date()
```

```csharp
DateTime[] GraceEventInfo( 
   string _licenseKey_
)
```

#### Parameters

_licenseKey_

Key that identifies a valid First Choice license.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ILicenseTool Interface](FChoice.Common~FChoice.Common.Licensing.ILicenseTool.md)  
[ILicenseTool Members](FChoice.Common~FChoice.Common.Licensing.ILicenseTool_members.md)