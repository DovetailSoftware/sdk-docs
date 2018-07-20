### FChoice.Foundation.Clarify Namespace

The **FChoice.Foundation.Clarify** namespace provides the main classes for data and application access to Clarify systems.  

The **FChoice.Foundation.Clarify** assembly contains classes that provide low-level access to Clarify database systems. **FChoice.Foundation.Clarify** is part of the First Choice **FCFL.NET** product.

Classes

|   | Class | Description |
| --- | --- | --- |
| ![Class](dotnetimages/Class.png) | [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) **ClarifyApplication** is the starting point for using **FCFL.NET** against a Clarify database system. |
| ![Class](dotnetimages/Class.png) | [ClarifyAuthenticationResult](fcSDK~FChoice.Foundation.Clarify.ClarifyAuthenticationResult.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifyAuthenticationService](fcSDK~FChoice.Foundation.Clarify.ClarifyAuthenticationService.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifyCacheBase](fcSDK~FChoice.Foundation.Clarify.ClarifyCacheBase.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifyDataSet](fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifyDataTable](fcSDK~FChoice.Foundation.Clarify.ClarifyDataTable.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifyException](fcSDK~FChoice.Foundation.Clarify.ClarifyException.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md) | Provides core Clarify business logic and managed access to Clarify data. |
| ![Class](dotnetimages/Class.png) | [ClarifyGenericException](fcSDK~FChoice.Foundation.Clarify.ClarifyGenericException.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifyRowCollection](fcSDK~FChoice.Foundation.Clarify.ClarifyRowCollection.md) |   |
| ![Class](dotnetimages/Class.png) | [ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md) | ClarifySession contains session information for a logged-in user and allows for manipulation of data in the Clarify system as that user. |
| ![Class](dotnetimages/Class.png) | [ClarifySessionData](fcSDK~FChoice.Foundation.Clarify.ClarifySessionData.md) |   |
| ![Class](dotnetimages/Class.png) | [ConfigItemCache](fcSDK~FChoice.Foundation.Clarify.ConfigItemCache.md) | Caches global config items and provides access to the global [ClarifyConfigItemCollection](fcSDK~FChoice.Foundation.Clarify.DataObjects.ClarifyConfigItemCollection.md) |
| ![Class](dotnetimages/Class.png) | [ConfigurationHelper](fcSDK~FChoice.Foundation.Clarify.ConfigurationHelper.md) |   |
| ![Class](dotnetimages/Class.png) | [DatabaseParameterFactory](fcSDK~FChoice.Foundation.Clarify.DatabaseParameterFactory.md) |   |
| ![Class](dotnetimages/Class.png) | [ListCache](fcSDK~FChoice.Foundation.Clarify.ListCache.md) | Caches and provides convenient access methods for GBST and HGBST list structures |
| ![Class](dotnetimages/Class.png) | [LocaleCache](fcSDK~FChoice.Foundation.Clarify.LocaleCache.md) | Caches and provides convenient access to country, state, and time zone information |
| ![Class](dotnetimages/Class.png) | [SchemaCache](fcSDK~FChoice.Foundation.Clarify.SchemaCache.md) | Caches and provides convenient access to ADP Schema information |
| ![Class](dotnetimages/Class.png) | [SchemaCacheHelper](fcSDK~FChoice.Foundation.Clarify.SchemaCacheHelper.md) |   |
| ![Class](dotnetimages/Class.png) | [StringCache](fcSDK~FChoice.Foundation.Clarify.StringCache.md) | Caches and provides convenient access to string_db and fc_string values |
| ![Class](dotnetimages/Class.png) | [WorkflowObjectInfo](fcSDK~FChoice.Foundation.Clarify.WorkflowObjectInfo.md) |   |

Interfaces

|   | Interface | Description |
| --- | --- | --- |
| ![Interface](dotnetimages/Interface.png) | [IClarifyApplication](fcSDK~FChoice.Foundation.Clarify.IClarifyApplication.md) |   |
| ![Interface](dotnetimages/Interface.png) | [IListCache](fcSDK~FChoice.Foundation.Clarify.IListCache.md) |   |
| ![Interface](dotnetimages/Interface.png) | [ILocaleCache](fcSDK~FChoice.Foundation.Clarify.ILocaleCache.md) |   |
| ![Interface](dotnetimages/Interface.png) | [IStringCache](fcSDK~FChoice.Foundation.Clarify.IStringCache.md) |   |

Delegates

|   | Delegate | Description |
| --- | --- | --- |
| ![Delegate](dotnetimages/Delegate.png) | [InitializeStatusChangeEventHandler](fcSDK~FChoice.Foundation.Clarify.InitializeStatusChangeEventHandler.md) |   |
| ![Delegate](dotnetimages/Delegate.png) | [SchemaLoadStatusEventHandler](fcSDK~FChoice.Foundation.Clarify.SchemaLoadStatusEventHandler.md) |   |

Enumerations

|   | Enumeration | Description |
| --- | --- | --- |
| ![Enumeration](dotnetimages/Enumeration.png) | [ClarifyLoginType](fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.md) | Provides enumerated values which determine how a given user is logged in when calling [ClarifyApplication.CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md) |
| ![Enumeration](dotnetimages/Enumeration.png) | [InitStatusChangeType](fcSDK~FChoice.Foundation.Clarify.InitStatusChangeType.md) |   |
| ![Enumeration](dotnetimages/Enumeration.png) | [SchemaLoadStatusType](fcSDK~FChoice.Foundation.Clarify.SchemaLoadStatusType.md) |   |

Remarks

To get started using **FCFL.NET** and the **FChoice.Foundation.Clarify** assembly read the Getting Started guide or the class documentation for [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md).

#### Reference

[fcSDK Assembly](fcSDK.md)