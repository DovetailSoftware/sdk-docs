     ListCache Class Members                                                   

fcSDK Documentation

ListCache Class Members

The following tables list the members exposed by [ListCache](fcSDK~FChoice.Foundation.Clarify.ListCache.md).

Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [CacheSetName](fcSDK~FChoice.Foundation.Clarify.ListCache~CacheSetName.md) | Overridden.    |
| ![Public Property](dotnetimages/publicProperty.png) | [CacheType](fcSDK~FChoice.Foundation.Clarify.ListCache~CacheType.md) | Overridden.    |
| ![Public Property](dotnetimages/publicProperty.png) | [GlobalStrings](fcSDK~FChoice.Foundation.Clarify.ListCache~GlobalStrings.md) | Gets a reference to the [GlobalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringListCollection.md) cache of all application pop-up lists in the database   |
| ![Public Property](dotnetimages/publicProperty.png) | [HierarchicalStrings](fcSDK~FChoice.Foundation.Clarify.ListCache~HierarchicalStrings.md) | Gets a reference to the [HierarchicalStringListCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElementCollection.md) cache of all user-defined lists in the database   |

[Top](#top)

Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png) | [GetGbstDefault](fcSDK~FChoice.Foundation.Clarify.ListCache~GetGbstDefault.md) | Gets the default string value for a given application pop-up list.   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetGbstDefaultObjID](fcSDK~FChoice.Foundation.Clarify.ListCache~GetGbstDefaultObjID.md) | Gets the objid of the default element for a given application pop-up list.   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetGbstElmByID](fcSDK~FChoice.Foundation.Clarify.ListCache~GetGbstElmByID.md) | Gets the value of an element with the specified objid in the specified application pop-up list   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetGbstElmObjID](fcSDK~FChoice.Foundation.Clarify.ListCache~GetGbstElmObjID.md) | Gets the objid of the specified element in the specified application pop-up list   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetGbstElmRankObjID](fcSDK~FChoice.Foundation.Clarify.ListCache~GetGbstElmRankObjID.md) | Gets the objid of the specified element by rank in the specified application pop-up list   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetGbstList](fcSDK~FChoice.Foundation.Clarify.ListCache~GetGbstList.md) | Gets a reference to a [GlobalStringList](fcSDK~FChoice.Foundation.Clarify.DataObjects.GlobalStringList.md) object representing an application pop-up list in the database   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetGbstListElements](fcSDK~FChoice.Foundation.Clarify.ListCache~GetGbstListElements.md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetHgbstElmDefault](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstElmDefault.md) | Gets the title of the default element for the given level in a user-defined list (HGBST).   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetHgbstElmDefaultElement](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstElmDefaultElement.md) | Overloaded. Gets a reference to an [HierarchicalStringElement](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElement.md) object which represents an element at the specified level in the specified list   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetHgbstElmDefaultObjID](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstElmDefaultObjID.md) | Overloaded. Gets the objid of the default element for the given level in a user-defined list (HGBST).   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetHgbstElmObjID](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstElmObjID.md) | Overloaded. Gets the objid of an element at a specific level in a user-defined list (HGBST)   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetHgbstList](fcSDK~FChoice.Foundation.Clarify.ListCache~GetHgbstList.md) | Overloaded. Gets a reference to a [HierarchicalStringElementCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.HierarchicalStringElementCollection.md) collection of list elements at the specified level in the given user-defined list   |
| ![Public Method](dotnetimages/publicMethod.png) | [IsInGbstList](fcSDK~FChoice.Foundation.Clarify.ListCache~IsInGbstList.md) | Gets whether or not the specified element value exists in a given application pop-up list   |
| ![Public Method](dotnetimages/publicMethod.png) | [IsInHgbstList](fcSDK~FChoice.Foundation.Clarify.ListCache~IsInHgbstList.md) | Overloaded. Gets whether or not an element with the specified title exists in a given application pop-up list   |
| ![Public Method](dotnetimages/publicMethod.png) | [RankIsInGbstList](fcSDK~FChoice.Foundation.Clarify.ListCache~RankIsInGbstList.md) | Gets whether or not an element with the specified rank exists in an application pop-up list   |
| ![Public Method](dotnetimages/publicMethod.png) | [TryGetHgbstList](fcSDK~FChoice.Foundation.Clarify.ListCache~TryGetHgbstList.md) | Overloaded.    |
| ![Public Method](dotnetimages/publicMethod.png) | [UpdateCache](fcSDK~FChoice.Foundation.CacheBase~UpdateCache.md) | (Inherited from [FChoice.Foundation.CacheBase](fcSDK~FChoice.Foundation.CacheBase.md)) |

[Top](#top)

Public Events

|   | Name | Description |
| --- | --- | --- |
| ![Public Event](dotnetimages/publicEvent.png) | [CacheUpdated](fcSDK~FChoice.Foundation.CacheBase~CacheUpdated_EV.md) | (Inherited from [FChoice.Foundation.CacheBase](fcSDK~FChoice.Foundation.CacheBase.md)) |

[Top](#top)

See Also

#### Reference

[ListCache Class](fcSDK~FChoice.Foundation.Clarify.ListCache.md)  
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)