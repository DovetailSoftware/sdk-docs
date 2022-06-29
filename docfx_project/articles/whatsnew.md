## What's New - Version 3.7.0

* Core:
  * Support for Oracle 19c Database has been added.
    * `odp.net.managed.121.1.2` library has been replaced with `oracle.manageddataaccess.19.14.0`.
    * Deprecated `System.Data.OracleClient` class by Microsoft has been replaced with `Oracle.ManagedDataAccess.Client` class by Oracle.

* Foundation:
  * New property `TimeZoneConversions` has been added to facilitate column exclusion from being converted to local time zone.
  * New connection string parameters: `Integrated Security=SSPI;` and `Persist Security Info=True;` can be used to log into the database using current Windows login credentials.
  * New property `Username` has been added to `FCApplication` class to allow setting user name for login instead of specifying it via database connection string.

* API Toolkits:
  * Support Toolkit:
    * Fixed a breaking change in 3.6.0 that added an extra property to the [modify_case](../sdk/toolkit_html/fccs/modify_case.html), [modify_subcase](../sdk/toolkit_html/fccs/modify_subcase.html), and [change_contact](../sdk/toolkit_html/fccs/change_contact.html) APIs. The <b>OnlyOpen</b> property was supposed to be added only to the .Net APIs via the UpdateCaseSetup, UpdateSubcaseSetup, and ChangeCaseContactSetup objects. The COM APIs should not have been changed.

* Workflow:
  * Workflow Manager actions now set Impersonator's User Name on activity entry when user impersonation is engaged.

* Installer:
  * `Oracle.ManagedDataAccess.dll` gets installed into Windows GAC during fcSDK installation. This library gets uninstalled from GAC when fcSDK is uninstalled.
  * ***Important for Oracle database users:*** when upgrading to Oracle 19c the `fc_next_num_scheme` stored procedure must be replaced with the one included in the "oracle_sprocs_post9.sql" file located in the 'sprocs' folder underneath the fcSDK installation path, see [**fcSDK** Installation Guide](installation-guide.md).



---

[What's New in Previous Versions](version-history.html)

