     LoadEnvironmentSettings Method                                                   

LoadEnvironmentSettings Method

Retrieves the current configuration values or loads new ones if no current ones are available.

Causes FCConfiguration to reload it's current configuration values (if forced) or return the current values.

Overload List

| Overload | Description |
| --- | --- |
| [LoadEnvironmentSettings()](FChoice.Common~FChoice.Common.FCConfiguration~LoadEnvironmentSettings().md) | Retrieves the current configuration values or loads new ones if no current ones are available.   |
| [LoadEnvironmentSettings(NameValueCollection)](FChoice.Common~FChoice.Common.FCConfiguration~LoadEnvironmentSettings(NameValueCollection).md) | Forces a load of new configuration values, using the supplied collection if possible.   |
| [LoadEnvironmentSettings(NameValueCollection,Boolean,Boolean)](FChoice.Common~FChoice.Common.FCConfiguration~LoadEnvironmentSettings(NameValueCollection,Boolean,Boolean).md) | Retrieves the current configuration values or loads new ones if no current ones are available, using the specified collection if possible.   |

Remarks

This should generally be called once per application by the "Main" method or class which initializes the application.

**NOTE:** It is not advisable to call this method after application initialization has occurred. It could potentially crash the application or cause unusual behavior.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCConfiguration Class](FChoice.Common~FChoice.Common.FCConfiguration.md)  
[FCConfiguration Members](FChoice.Common~FChoice.Common.FCConfiguration_members.md)