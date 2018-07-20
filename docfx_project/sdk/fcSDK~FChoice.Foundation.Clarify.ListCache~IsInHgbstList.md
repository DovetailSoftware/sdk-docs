### IsInHgbstList Method (ListCache)

Gets whether or not an element with the specified title exists in a given application pop-up list

Overload List

| Overload | Description |
| --- | --- |
| [IsInHgbstList(String,String,String\[\])](fcSDK~FChoice.Foundation.Clarify.ListCache~IsInHgbstList(String,String,String[]).md) |   |
| [IsInHgbstList(String,String,Boolean,String\[\])](fcSDK~FChoice.Foundation.Clarify.ListCache~IsInHgbstList(String,String,Boolean,String[]).md) |   |

Remarks

If no list with the specified _listTitle_ exists or any of the levels specified by _elementTitles_ do not exist , an exception will be thrown. Otherwise, true or false is returned depending on whether the specified _elementTitle_ exists in the list at the specified level.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[ListCache Members](fcSDK~FChoice.Foundation.Clarify.ListCache_members.md)