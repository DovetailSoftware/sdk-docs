     AppendFilter Method (FCGeneric)                                                   

fcSDK Documentation

AppendFilter Method (FCGeneric)

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a numeric [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).

Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md).

Overload List

| Overload | Description |
| --- | --- |
| [AppendFilter(String,Boolean)](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,Boolean).md) |   |
| [AppendFilter(String,NumberOps,Int32)](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,NumberOps,Int32).md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a numeric [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).   |
| [AppendFilter(String,NumberOps,Decimal)](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,NumberOps,Decimal).md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a numeric [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).   |
| [AppendFilter(String,DateOps,DateTime)](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,DateOps,DateTime).md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a **DateTime** [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).   |
| [AppendFilter(String,StringOps,String)](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,StringOps,String).md) | Adds a filter to constrain the results of an **FCGeneric** [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) against a **String** [DataField](fcSDK~FChoice.Foundation.FCGeneric~DataFields.md).   |

Remarks

Filters are a powerful feature that make it easy to limit the rows returned by a [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md). You may call filter methods multiple times resulting in each successive filter further constraining the rows returned.

You can call [ClearFilters](fcSDK~FChoice.Foundation.FCGeneric~ClearFilters.md) to remove all the filters being applied to a FCGeneric

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)