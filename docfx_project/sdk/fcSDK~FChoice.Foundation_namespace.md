### FChoice.Foundation Namespace

Base implementation of core CRM capabilities.

Classes

|   | Class | Description |
| --- | --- | --- |
| ![Class](dotnetimages/Class.png) | [CacheBase](fcSDK~FChoice.Foundation.CacheBase.md) |   |
| ![Class](dotnetimages/Class.png) | [CacheManager](fcSDK~FChoice.Foundation.CacheManager.md) |   |
| ![Class](dotnetimages/Class.png) | [CacheSectionHandler](fcSDK~FChoice.Foundation.CacheSectionHandler.md) |   |
| ![Class](dotnetimages/Class.png) | [CustomCache](fcSDK~FChoice.Foundation.CustomCache.md) |   |
| ![Class](dotnetimages/Class.png) | [DataFieldNameCollection](fcSDK~FChoice.Foundation.DataFieldNameCollection.md) |   |
| ![Class](dotnetimages/Class.png) | [DictionaryExtensions](fcSDK~FChoice.Foundation.DictionaryExtensions.md) |   |
| ![Class](dotnetimages/Class.png) | [FCApplication](fcSDK~FChoice.Foundation.FCApplication.md) |   |
| ![Class](dotnetimages/Class.png) | [FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md) | Provides core CRM business logic and managed access to data. |
| ![Class](dotnetimages/Class.png) | [FCInvalidLoginException](fcSDK~FChoice.Foundation.FCInvalidLoginException.md) | Thrown when credentials for a Session cannot be authenticated |
| ![Class](dotnetimages/Class.png) | [FCSession](fcSDK~FChoice.Foundation.FCSession.md) | **FCSession** contains session information for a logged-in user and allows for manipulation of data in the CRM system as that user. |
| ![Class](dotnetimages/Class.png) | [FCSessionData](fcSDK~FChoice.Foundation.FCSessionData.md) | Repository for session data which is retained by the [FCApplication](fcSDK~FChoice.Foundation.FCApplication.md) between session uses. |
| ![Class](dotnetimages/Class.png) | [FCSessionSummary](fcSDK~FChoice.Foundation.FCSessionSummary.md) | Represents a summary view of the session for reporting purposes. |
| ![Class](dotnetimages/Class.png) | [FoundationException](fcSDK~FChoice.Foundation.FoundationException.md) | The exception that is thrown when an error occurs in Foundation. |
| ![Class](dotnetimages/Class.png) | [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) | Represents a row of data in a [GenericDataTable](fcSDK~FChoice.Foundation.GenericDataTable.md). |
| ![Class](dotnetimages/Class.png) | [GenericDataRowCollection](fcSDK~FChoice.Foundation.GenericDataRowCollection.md) | Represents a collection of rows for a [GenericDataTable](fcSDK~FChoice.Foundation.GenericDataTable.md). |
| ![Class](dotnetimages/Class.png) | [GenericDataSet](fcSDK~FChoice.Foundation.GenericDataSet.md) |   |
| ![Class](dotnetimages/Class.png) | [GenericDataTable](fcSDK~FChoice.Foundation.GenericDataTable.md) | Provides a [Generic](fcSDK~FChoice.Foundation.FCGeneric.md) with data storage that integrates with [DataSets](http://msdn.microsoft.com/library/default.asp?url=/library/en-us/vbcon/html/vbcondatasets.asp). |
| ![Class](dotnetimages/Class.png) | [GenericException](fcSDK~FChoice.Foundation.GenericException.md) | The exception that is thrown when an error occurs in the [Generic](fcSDK~FChoice.Foundation.FCGeneric.md) classes in Foundation. |
| ![Class](dotnetimages/Class.png) | [MaximumRowsExceededEventArgs](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs.md) | Delegates handling the [MaximumRowsExceeded](fcSDK~FChoice.Foundation.FCGeneric~MaximumRowsExceeded_EV.md) event will return this object to cue [FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md) on how to handle large queries. |
| ![Class](dotnetimages/Class.png) | [RelationNameCollection](fcSDK~FChoice.Foundation.RelationNameCollection.md) | Collection of Relations |
| ![Class](dotnetimages/Class.png) | [ValidatedNameCollection](fcSDK~FChoice.Foundation.ValidatedNameCollection.md) |   |

Delegates

|   | Delegate | Description |
| --- | --- | --- |
| ![Delegate](dotnetimages/Delegate.png) | [CacheLoadedEventHandler](fcSDK~FChoice.Foundation.CacheLoadedEventHandler.md) |   |
| ![Delegate](dotnetimages/Delegate.png) | [CachesUpdatedEventHandler](fcSDK~FChoice.Foundation.CachesUpdatedEventHandler.md) |   |
| ![Delegate](dotnetimages/Delegate.png) | [MaximumRowsExceededEventHandler](fcSDK~FChoice.Foundation.MaximumRowsExceededEventHandler.md) |   |

Enumerations

|   | Enumeration | Description |
| --- | --- | --- |
| ![Enumeration](dotnetimages/Enumeration.png) | [CacheType](fcSDK~FChoice.Foundation.CacheType.md) |   |
| ![Enumeration](dotnetimages/Enumeration.png) | [DateOps](fcSDK~FChoice.Foundation.DateOps.md) | Valid date filtering operations for methods such as [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,DateOps,DateTime).md). |
| ![Enumeration](dotnetimages/Enumeration.png) | [NumberOps](fcSDK~FChoice.Foundation.NumberOps.md) | Valid numeric filtering operations for methods such as [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,NumberOps,Int32).md). |
| ![Enumeration](dotnetimages/Enumeration.png) | [StringOps](fcSDK~FChoice.Foundation.StringOps.md) | Valid string filtering operations for methods such as [AppendFilter](fcSDK~FChoice.Foundation.FCGeneric~AppendFilter(String,StringOps,String).md). |



#### Reference

[fcSDK Assembly](fcSDK.md)