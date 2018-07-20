### ContractItemObjid Property

Objid of contract line item with which to link this Part Request -- see remarks for special usage  

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property ContractItemObjid As Integer
```

```csharp
[PropertyBitValueAttribute()]
public int ContractItemObjid {get; set;}
```

Remarks

**NOTE**: This property should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePartRequestDetailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md)  
[CreatePartRequestDetailSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup_members.md)