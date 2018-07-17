     Unpick Method                                                   

fcSDK Documentation

Unpick Method

Allows for the unpicking (unreserving) of inventory parts for a part request.

This overload takes a set of required parameters for the API.

Allows for the unpicking (unreserving) of inventory parts for a part request.

Overload List

| Overload | Description |
| --- | --- |
| [Unpick(String,Location)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick(String,Location).md) | 
Allows for the unpicking (unreserving) of inventory parts for a part request.

This overload takes a set of required parameters for the API.   |
| [Unpick(String,Location,String\[\])](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick(String,Location,String[]).md) | 

Allows for the unpicking (unreserving) of inventory parts for a part request.

This overload takes a set of required parameters for the API.   |
| [Unpick(String,Location,Boolean)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick(String,Location,Boolean).md) | 

Allows for the unpicking (unreserving) of inventory parts for a part request.

This overload takes a set of required parameters for the API.   |
| [Unpick(String,Location,Boolean,String\[\])](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick(String,Location,Boolean,String[]).md) | 

Allows for the unpicking (unreserving) of inventory parts for a part request.

This overload takes a set of required parameters for the API.   |
| [Unpick(UnpickSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick(UnpickSetup).md) | 

Allows for the unpicking (unreserving) of inventory parts for a part request.

This overload takes a setup object.   |
| [Unpick(UnpickSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick(UnpickSetup,IDbTransaction).md) | 

Allows for the unpicking (unreserving) of inventory parts for a part request.

This overload takes a setup object and a database transaction.   |

Remarks

This API will search in the specified location and bin (for good or bad inventory), and will unreserve it for the part request only if it was previously reserved.

**WARNING**: As in base Clarify, if you (for example) pick parts in multiple bins, and then try to unpick from one bin, it will try to unpick as many units as possible (quantity-tracked only). It may unpick more units in a bin than it originally picked in that bin. This is because Clarify only remembers that a part request picked against a bin (and how many units total are picked in that bin). It does not remember how many units were picked for a particular part request. Note that this is not an issue with serialized parts.

To allow for multiple calls to this API to be performed without extra complex transitions being added to the system, set the [UseTransitions](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup~UseTransitions.md) property of the [UnpickSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup.md) object, or the _useTransitions_ parameter of the respective overloads to false. Note that the last call to [Unpick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Unpick.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

If the part request was created using a serialized site part, then in order to unpick an inventory part you must use one of the serial numbers variants of this API and specify new serial numbers or use the keyword "inventory" as the only serial number. Specifying "inventory" as the only serial number will force this API to ignore the serial number stored in the part request and allow the unpick to occur from inventory parts.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup", Caption="UnpickSetup Class"**