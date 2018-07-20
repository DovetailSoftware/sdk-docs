### AppendFilterBetween Method

Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two Integer values.

Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two values.

Overload List

| Overload | Description |
| --- | --- |
| [AppendFilterBetween(String,Boolean,Int32,Int32)](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterBetween(String,Boolean,Int32,Int32).md) | Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two Integer values.   |
| [AppendFilterBetween(String,Boolean,Decimal,Decimal)](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterBetween(String,Boolean,Decimal,Decimal).md) | Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two Decimal values.   |
| [AppendFilterBetween(String,Boolean,DateTime,DateTime)](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterBetween(String,Boolean,DateTime,DateTime).md) | Adds a specialized filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to be between two DateTime values.   |

Remarks

Filters are a powerful feature that make it easy to limit the rows returned by a [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md). You may call filter methods multiple times resulting in each successive filter further constraining the rows returned.

You can call [ClearFilters](fcSDK~FChoice.Foundation.FCGeneric~ClearFilters.md) to remove all the filters being applied to a FCGeneric

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)