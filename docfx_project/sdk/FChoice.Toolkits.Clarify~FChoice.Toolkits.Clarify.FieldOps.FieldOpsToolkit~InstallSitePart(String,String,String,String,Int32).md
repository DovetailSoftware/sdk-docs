     InstallSitePart(String,String,String,String,Int32) Method                                                   

fcSDK Documentation

InstallSitePart(String,String,String,String,Int32) Method

The Site Id of the Parent Site where the Site Part is being installed.

Part Number of the Site Part

Part Revision of the Site Part

Part Domain of the Site Part

The Quantity of the Site Part being installed.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function InstallSitePart( _
   ByVal _siteIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partrevision_ As String, _
   ByVal _partdomain_ As String, _
   ByVal _quantity_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) InstallSitePart( 
   string _siteIDNum_,
   string _partNumber_,
   string _partrevision_,
   string _partdomain_,
   [int](#) _quantity_
)

#### Parameters

_siteIDNum_

The Site Id of the Parent Site where the Site Part is being installed.

_partNumber_

Part Number of the Site Part

_partrevision_

Part Revision of the Site Part

_partdomain_

Part Domain of the Site Part

_quantity_

The Quantity of the Site Part being installed.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the SitePart.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~InstallSitePart.md)