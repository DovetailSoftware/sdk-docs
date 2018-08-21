## What's New - Version 3.6.0

#### Enhancements

* Core:
  * Added better handling of DBNull values during SDK initialization.
  * Fixed timezone conversion issue for DST border dates.

* API Toolkits:
  * Support Toolkit:
    * Added a property to the [UpdateCase](../sdk/FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~UpdateCase(UpdateCaseSetup).html), [UpdateSubcase](../sdk/FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~UpdateSubcase(UpdateSubcaseSetup).html), [ChangeCaseSite](../sdk/FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseSite(ChangeCaseSiteSetup).html), and [ChangeCaseContact](../sdk/FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseContact(ChangeCaseContactSetup).html) APIs. The <b>OnlyOpen</b> property, which defaults to <i>true</i>, is checked before updating the case, subcase, or case site/contact. If the property is set to <i>true</i>, only Open cases/subcases can be updated.
    * Added support for two new email templates, to allow distinction and customization for outgoing case and subcase emails individually.
      * send_email_about_case
      * send_email_about_subcase
        If these templates are not found, the email will still be based on the send_email_about_obj template.
    * For all of the toolkits, the impersonatorUserName property was added to APIs to record the login name of the user that performed the activity on behalf of another user.

* DataVerifier:
  * Corrected a few error/failure messages that can be seen when verifying states.
  * Added a new Dovetail Ready category, which contains:
    * FC String Locale Verifier
    * Stored Procedure Verifier
    * Verify License Table (broken out from sdk com compatibility test)
    * Verify SDK License (broken out from sdk verifier test)
    * SDK Verifier (COM)
    * SDK Verifier (.NET)
    * Schema Verifier
  * Added new tests under Schema Verifier:
    * Test for columns declared in the system but missing in Clarify schema.
    * Test for columns declared in Clarify schema but missing in the system.
    * ORACLE only - Look for db type of LONG for any table. While not an issue by itself, give a warning that another LONG column cannot be added to such a table. If table_commit_log.cmit_history is of db type LONG the schema changes for Agent cannot be applied and Schema Editor fails with Oracle error.
    * Test for missing non-exclusive relations.

---

[What's New in Previous Versions](version-history.html)
