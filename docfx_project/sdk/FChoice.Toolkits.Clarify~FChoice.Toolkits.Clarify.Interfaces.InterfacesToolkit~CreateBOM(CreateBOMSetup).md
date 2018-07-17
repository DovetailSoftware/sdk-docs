     CreateBOM(CreateBOMSetup) Method                                                   

fcSDK Documentation

CreateBOM(CreateBOMSetup) Method

Setup object for API invocation.

Creates a Bill Of Materials (BOM) for a Part Revision. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateBOM( _
   ByVal _setupParam_ As [CreateBOMSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateBOMSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateBOM( 
   [CreateBOMSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateBOMSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the BOM.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateBOM.md)  
[CreateBOMSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateBOMSetup.md)