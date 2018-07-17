     ParentLineItemObjid Property (CreateContractLineItemSetup)                                                   

fcSDK Documentation

ParentLineItemObjid Property (CreateContractLineItemSetup)

The objid of the parent Line Item.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property ParentLineItemObjid As [Integer](#)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [int](#) ParentLineItemObjid {get; set;}

Remarks

If you wish to make this line item a parent line item, set this property's value to –1.  Otherwise, put the objid of the parent line item in the field. It will be made a child of the parent line item.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateContractLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup.md)  
[CreateContractLineItemSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.CreateContractLineItemSetup_members.md)