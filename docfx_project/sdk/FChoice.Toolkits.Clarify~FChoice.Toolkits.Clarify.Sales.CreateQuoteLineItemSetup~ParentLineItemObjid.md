     ParentLineItemObjid Property (CreateQuoteLineItemSetup)                                                   

fcSDK Documentation

ParentLineItemObjid Property (CreateQuoteLineItemSetup)

The objid of the parent line item.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property ParentLineItemObjid As [Integer](#)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [int](#) ParentLineItemObjid {get; set;}

Remarks

If this line item will be a parent line item, set this property to –1. Otherwise, set it to the objid of the parent line item in the field. It will be made a child of the parent line item. If the line item is to be a stand-alone item (the item is not a parent or child), set this value to –2.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateQuoteLineItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteLineItemSetup.md)  
[CreateQuoteLineItemSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateQuoteLineItemSetup_members.md)