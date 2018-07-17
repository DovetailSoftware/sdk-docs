     AppendFilterInList Method                                                   

fcSDK Documentation

AppendFilterInList Method

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible Integer values**.**

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible values**.**

Overload List

| Overload | Description |
| --- | --- |
| [AppendFilterInList(String,Boolean,Int32\[\])](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList(String,Boolean,Int32[]).md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible Integer values**.**   |
| [AppendFilterInList(String,Boolean,Decimal\[\])](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList(String,Boolean,Decimal[]).md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible Decimal values**.**   |
| [AppendFilterInList(String,Boolean,DateTime\[\])](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList(String,Boolean,DateTime[]).md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible DateTime values**.**   |
| [AppendFilterInList(String,Boolean,String\[\])](fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList(String,Boolean,String[]).md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a list of possible String values**.**   |

Remarks

Filters are a powerful feature that make it easy to limit the rows returned by a [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md). You may call filter methods multiple times resulting in each successive filter further constraining the rows returned.

You can call [ClearFilters](fcSDK~FChoice.Foundation.FCGeneric~ClearFilters.md) to remove all the filters being applied to a FCGeneric.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)