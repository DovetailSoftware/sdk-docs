### LoadEnvironmentSettings(NameValueCollection,Boolean,Boolean) Method

A [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionMembersTopic.htm) of values with which to attempt a load configuration values.

Specifies whether or not to check for quired values in the collection (like [ConfigValues.CONNECT_STRING](FChoice.Common~FChoice.Common.ConfigValues~CONNECT_STRING.md)).

Specifies whether or not to retrieve the current configuration values (if available), or discard the current and load new settings.

Retrieves the current configuration values or loads new ones if no current ones are available, using the specified collection if possible.

Syntax

```vbnet
'Declaration

Public Overloads Shared Function LoadEnvironmentSettings( _
   ByVal _initialValues_ As NameValueCollection, _
   ByVal _checkRequired_ As Boolean, _
   ByVal _forceLoad_ As Boolean _
) As NameValueCollection
```

```csharp
public static NameValueCollection LoadEnvironmentSettings( 
   NameValueCollection _initialValues_,
   bool _checkRequired_,
   bool _forceLoad_
)
```

#### Parameters

_initialValues_

A [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionMembersTopic.htm) of values with which to attempt a load configuration values.

_checkRequired_

Specifies whether or not to check for quired values in the collection (like [ConfigValues.CONNECT_STRING](FChoice.Common~FChoice.Common.ConfigValues~CONNECT_STRING.md)).

_forceLoad_

Specifies whether or not to retrieve the current configuration values (if available), or discard the current and load new settings.

#### Return Value

A [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionMembersTopic.htm) of values produced by loading the environment settings either from the provided collection, from the current application configuration, or a merge of both.

Exceptions

| Exception | Description |
| --- | --- |
| [FCInvalidConfigurationException](FChoice.Common~FChoice.Common.FCInvalidConfigurationException.md) | One or more required configuration values was not found either in the provided initialValues collection or in the application configuration settings and checkRequired is set to true. |

Remarks

If **_initialValues_** is null (**Nothing** in Visual Basic), an attempt will be made to load the settings from the application configuration settings. If the collection is not null, does not contain all the required values, and **_checkRequired_** is true, an exception will be thrown.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCConfiguration Class](FChoice.Common~FChoice.Common.FCConfiguration.md)  
[FCConfiguration Members](FChoice.Common~FChoice.Common.FCConfiguration_members.md)  
[Overload List](FChoice.Common~FChoice.Common.FCConfiguration~LoadEnvironmentSettings.md)