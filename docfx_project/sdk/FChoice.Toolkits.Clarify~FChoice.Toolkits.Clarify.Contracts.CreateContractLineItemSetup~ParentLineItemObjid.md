### ParentLineItemObjid Property (CreateContractLineItemSetup)

The objid of the parent Line Item.

Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property ParentLineItemObjid As Integer
```

```csharp
[PropertyBitValueAttribute()]
public int ParentLineItemObjid {get; set;}
```

Remarks

If you wish to make this line item a parent line item, set this property's value to –1.  Otherwise, put the objid of the parent line item in the field. It will be made a child of the parent line item.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateContractLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md)  
[CreateContractLineItemSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup_members.md)