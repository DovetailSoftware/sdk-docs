     CreatePartRequestHeaderSubcase(CreatePartRequestHeaderSubcaseSetup) Method                                                   

fcSDK Documentation

CreatePartRequestHeaderSubcase(CreatePartRequestHeaderSubcaseSetup) Method

Setup object for API invocation.

Used to create a new part request header against a subcase.

This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreatePartRequestHeaderSubcase( _
   ByVal _setupParam_ As [CreatePartRequestHeaderSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreatePartRequestHeaderSubcase( 
   [CreatePartRequestHeaderSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Header.
*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Header.

Remarks

Use this API to explicitly create part request headers for subcases (as opposed to cases or subcases). This is useful if the case ID numbering scheme contains dashes ('-').

**NOTE**: The [ContractObjId](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup~ContractObjid.md) property on the [CreatePartRequestHeaderCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup.md) object should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderSubcase.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup", Caption="CreatePartRequestHeaderSubcaseSetup Class"**