﻿### CreatePartRequestHeaderSubcase(String,String,String,String,String) Method

Contact's first name.

Contact's last name.

Contact's phone number.

Identifier of the site where this Part Request should be shipped

Identifier of the Subcase with which this Part Request is associated

Used to create a new part request header against a subcase.

This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreatePartRequestHeaderSubcase( _
   ByVal _contactFirstName_ As String, _
   ByVal _contactLastName_ As String, _
   ByVal _contactPhone_ As String, _
   ByVal _shipToSiteIDNum_ As String, _
   ByVal _caseIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreatePartRequestHeaderSubcase( 
   string _contactFirstName_,
   string _contactLastName_,
   string _contactPhone_,
   string _shipToSiteIDNum_,
   string _caseIDNum_
)
```

#### Parameters

_contactFirstName_

Contact's first name.

_contactLastName_

Contact's last name.

_contactPhone_

Contact's phone number.

_shipToSiteIDNum_

Identifier of the site where this Part Request should be shipped

_caseIDNum_

Identifier of the Subcase with which this Part Request is associated

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Header.
*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Header.

#### Remarks

Use this API to explicitly create part request headers for subcases (as opposed to cases or subcases). This is useful if the case ID numbering scheme contains dashes ('-').

**NOTE**: The [ContractObjId](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup~ContractObjid.md) property on the [CreatePartRequestHeaderCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup.md) object should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderSubcase.md)