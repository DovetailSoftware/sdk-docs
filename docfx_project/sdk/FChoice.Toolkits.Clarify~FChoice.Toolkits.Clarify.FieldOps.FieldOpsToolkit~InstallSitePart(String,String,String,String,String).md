### InstallSitePart(String,String,String,String,String) Method

The Site Id of the Parent Site where the Site Part is being installed.

Part Number of the Site Part

Part Revision of the Site Part

Part Domain of the Site Part

Serial Number of the Site Part

Syntax

```vbnet
'Declaration

Public Overloads Function InstallSitePart( _
   ByVal _siteIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partrevision_ As String, _
   ByVal _partdomain_ As String, _
   ByVal _serialNumber_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult InstallSitePart( 
   string _siteIDNum_,
   string _partNumber_,
   string _partrevision_,
   string _partdomain_,
   string _serialNumber_
)
```

#### Parameters

_siteIDNum_

The Site Id of the Parent Site where the Site Part is being installed.

_partNumber_

Part Number of the Site Part

_partrevision_

Part Revision of the Site Part

_partdomain_

Part Domain of the Site Part

_serialNumber_

Serial Number of the Site Part

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the SitePart.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~InstallSitePart.md)