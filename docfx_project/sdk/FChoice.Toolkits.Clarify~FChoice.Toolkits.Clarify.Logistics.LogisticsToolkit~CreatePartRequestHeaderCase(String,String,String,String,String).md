     CreatePartRequestHeaderCase(String,String,String,String,String) Method                                                   

fcSDK Documentation

CreatePartRequestHeaderCase(String,String,String,String,String) Method

Contact's first name.

Contact's last name.

Contact's phone number.

Identifier of the Site where this Part Request is being shipped

The identifier of the Case with which this Part Request is associated

Used to create a new part request header against a case.

This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreatePartRequestHeaderCase( _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String, _
   ByVal _shipToSiteIDNum_ As String, _
   ByVal _caseIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreatePartRequestHeaderCase( 
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_,
   string _shipToSiteIDNum_,
   string _caseIDNum_
)

#### Parameters

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

_shipToSiteIDNum_

Identifier of the Site where this Part Request is being shipped

_caseIDNum_

The identifier of the Case with which this Part Request is associated

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Header.
*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Header.

Remarks

**NOTE**: The [ContractObjId](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderCaseSetup~ContractObjid.md) property on the [CreatePartRequestHeaderCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderCaseSetup.md) object should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderCase.md)