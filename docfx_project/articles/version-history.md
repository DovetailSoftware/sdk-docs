# fcSDK Version History

## What's New

<h3>Version 3.5.0</h3>
<ul>
<li>API Toolkits:
  <ul>
<li>Sales Toolkit:
<ul>
  <li>Added LogActionItemEmailIn API.</li>
  <li>change_task_cond API:</li>
	<ul>
	  <li>included closing status in activity entry text.</li>
	  <li>added "Reopened" activity handling.</li>
	  <li>changed activity entry text for "Status Change" action.</li>
	  <li>after "Reopen", the task will be put into the default wipbin.</li>
	</ul>
  <li>update_action_item API:</li>
	<ul>
	  <li>changed activity entry text for "Status Change" action.</li>
	  <li>proper values for action item timebombs are being used.</li>
	</ul>
  <li>UpdatePartRevision API:</li>
	<ul>
	  <li>fixed a bug in which part revision was being cleared if it was not being changed to a new revision.</li>
	</ul>
</ul>
</li>
<li>Clear Logistics Field Operations Toolkit:
<ul>
  <li>made StartTime property public for UpdateTimeLogSetup class.</li>
</ul>
</li>
  </ul>
<li>Cache Manager:
  <ul>
    <li>Added cache locale cleansing for duplicate states/provinces.</li>
  </ul>
</li>
<li>DataVerifier:
  <ul>
    <li>Modified error messages to better communicate issues with blank or duplicate states/provinces.</li>
  </ul>
</li>
</ul>
<h3>Version 3.4.3</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Modified <a href="/toolkit_html/fcinter/create_employee.html">create_employee</a> API to use new SQL statements: CREATE LOGIN and CREATE USER instead of sp_adduser and sp_addlogin system stored procedures in order to create new user login names - MS SQL databases only.<br/>
<b>IMPORTANT NOTE</b>: Please see create_employee API <a href="/toolkit_html/fcinter/create_employee.html#notes_3_4_3">notes</a> for explanation of the implications regarding certain versions of MS SQL RDBMS.</li>
    <li>Fixed an error occurring when a new case phone log was added while case history was returned as null because no initial notes are required at the time of case creation.</li>
  </ul>
</li>
<li>Logging:
  <ul>
    <li>All passwords are obfuscated with \'********\' for all set, reset, and update actions. This also applies to custom columns containing passwords for as long as they are named like \'%password'.</li>
    <li>For parametrized SQL statements, when column mapping information is available, all parameter names are derived from column names. This allows for easy identification of the value used for each column.</li>
    <li>Actual names of database tables are reported in the output regarding datasets used, if such information is available.</li>
  </ul>
</li>
<li>Security:
  <ul>
    <li>The encryption algorithm for user passwords has changed to better match with Clarify's encryption algorithm.<br/>
This will affect users whose password contains one of these 7 characters: ! (exclamation mark), @ (at sign), # (hash/pound sign), $ (dollar sign), ^ (caret sign), & (ampersand), * (asterisk).<br/>
<b>IMPORTANT NOTE</b>: For these users, their password will need to be reset, either by using the <i>Forgot Password</i> process, or by having it reset by an administrator. 
This only affects employees (users), not contacts (web_users).</li>
  </ul>
</li>
</ul>
<h3>Version 3.4.2</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Added a new capability to create user login names with special characters - MS SQL databases only.</li>
<li>Added a test to ensure that new user login names conform to syntax rules for unquoted object names - Oracle databases only.</li>
    <li>Fixed a bug in which the same data could be selected multiple times for a complex bulk query traversing many tables.</li>
    <li>Fixed bugs within FCFO methods pertaining to Service Interruptions in which case record was referred to even if it was not available.</li>
  </ul>
</li>
</ul>
<h3>Version 3.4.1</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Added a property to the SupportToolkit for the Create Case API. The <b>UseDenormalizedCaseTypeLevels</b> property, which defaults to <i>true</i>, is checked before populating the case_type_lvl[1,2,3] fields on the new case record. If the property is set to <i>false</i>, these fields are not populated.</li>
    <li>
      Added a new .NET QualityToolkit API. This new API is not exposed via COM compatibility.
      <ul>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~LogCREmailIn.html">LogCREmailIn</a></li>
      </ul>
    </li>
    <li>Fixed bugs within FCFO methods pertaining to Service Interruptions and Employee Appointments in which wrong Application Lists were used and only the default values for Class and Type were recorded in Activity Log.</li>
  </ul>
</li>
</ul>
<h3>Version 3.4.0</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>
      <b>IMPORTANT CHANGE</b>: Subcase ID Number generation is now handled by a new stored procedure (<i>fc_next_subcase_seq</i>). This stored procedure needs to be compiled to your database. The <b>Create Subcase</b> API will not operate properly without this stored procedure being loaded into the database. See the <a href="./fcsdk_install.html#installstoredprocedures">Install Required Stored Procedures</a> section of the Installation instructions for more information.
    </li>
    <li>Fixed a bug which would result in a "badly formed where clause" message received while evaluating an Auto Destination rule with a condition in queue path.</li>
  </ul>
</li>
<li>License Installer:
  <ul>
    <li>Added Dovetail Task Manager as a new product.</li>
  </ul>
</li>
</ul>
<h4>Upgrading from previous versions</h4>
<ul>
<li>Uninstall the old version of
  <!--DXMETADATA start type="Variable" name="ProductTitle" -->fcSDK
  <!--DXMETADATA end -->.</li>
<li>Install the new version of
  <!--DXMETADATA start type="Variable" name="ProductTitle" -->fcSDK
  <!--DXMETADATA end -->.</li>
<li><a href="./fcsdk_install.html#installstoredprocedures">Install the required stored procedures</a>, which includes the new <i>fc_next_subcase_seq</i> procedure for subcase ID generation.
</ul>
<h3>Version 3.3.8</h3>
<ul>
<li>DataVerifier:
  <ul>
    <li>Added a test for CLOB/LONG columns inconsistency in Oracle database.</li>
  </ul>
</li>
<li>Core:
  <ul>
    <li>Added configuration item fchoice.setstringparameterdbtypeandsize to allow control whether the type and size of SQL parameter should be set by SDK or database driver.</li>
    <li>Fixed a bug resulting with type and size of SQL parameter not being set for Oracle database.</li>
    <li>Added a test and a warning for CLOB/LONG columns inconsistency in Oracle database.</li>
  </ul>
</li>
<h5>Note: compatibility with and support for Oracle 12c has been tested and confirmed. See [System Requirements](system-requirements.md) and <a href="https://support.dovetailsoftware.com/selfservice/resources/platform-guide">Dovetail Software Platform Guide</a> for details.</h5>
</ul>
<h3>Version 3.3.7</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>For CloseCase, when closing a case, if there are open Administraion type subcases, the Close Case API now sets the case's condition to 68 with a condition title of "Closed-Admin Pending".</li>
    <li>For ReopenCase, if the case has a status of "Closed-Admin Pending", then it now gets reopened. It was failing with a "Case is not Closed." message.</li>
    <li>For LogCaseEmailIn and LogSubcaseEmailIn, the email subject is now added to the email log record.</li>
  </ul>
</li>
<li>Installer:
  <ul>
    <li>Updated the required Microsoft .NET Framework to version 4.0 (Full). If this version has not been installed, the installer will stop.</li>
  </ul>
</li>
</ul>
<h3>Version 3.3.6</h3>
<ul>
<li>DataVerifier:
  <ul>
    <li>Added a new State/Prov test to make sure no entries have a blank/null name or full name.</li>
    <li>Added a new Strings test to make sure no duplicate entries exist for each locale.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Fixed the activity time for UpdatePartRequestDetail to use the session current time.</li>
    <li>For Site Parts - the site part objid is now returned in the toolkit result for the Move, Deinstall, and Reinstall APIs.</li>
    <li>Added UseDatabaseLogins property to InterfacesToolkit. When set to False, a database user is not created by the CreateEmployee API.</li>
  </ul>
</li>
<li>Web Services:
  <ul>
    <li>The Web Services have been moved to to a public GitHub repository: <a href="https://github.com/DovetailSoftware/dovetail-sdk-web-services">dovetail-sdk-web-services</a>. The documentation provided here is still applicable, but Web Services are not included as part of the fcSDK installation.
      </h4>
    </li>
  </ul>
</li>
<li>Demos:
  <ul>
    <li>The Demos have been moved to to a public GitHub repository: <a href="https://github.com/DovetailSoftware/dovetail-sdk-demos">dovetail-sdk-demos</a>. The documentation provided here is still applicable, but Demos are not included as part of the fcSDK installation.</li>
  </ul>
</li>
</ul>
<h3>Version 3.3.5</h3>
<ul>
<li>Core:
  <ul>
    <li>Improved performance for <a href="fcSDK~FChoice.Foundation.FCGeneric~AppendFilterInList.html">AppendFilterInList</a> queries against non-unicode string fields, allowing the database to optimize the query.</li>
    <li>Fixed bug where the field size for web user login_name was based on the user login_name size when used as a parameter for contact login.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Added remove child entity APIs for Contracts.
      <ul>
        <li>RemoveSiteFromContract</li>
        <li>RemoveSitePartFromContract</li>
        <li>RemoveContactFromContract</li>
      </ul>
    </li>
    <li><a href="FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession~AddAttachment.html">Adding an attachment</a> will now update the parent objects timestamp when possible.</li>
    <li>Fixed validation used when calculating a Contract's available units.</li>
    <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateAccount().html">CreateAccount</a> now correctly handles an empty or null Territory argument.</li>
    <li>Fixed an issue where the timestamps written to the case_history field could be incorrect if the user's session timezone was different than the server time zone. This affected Forward, Reject, and Change Status activities. Note that the act_entry timestamps were written correctly.</li>
    <li>Fixed a bug causing incorrect level_to_bin and level_to_part values stored for nested BOM parts being reinstalled.</li>
    <li>Check Logistics and Quality transition operations now throw an exception when table_transition.rank value is higher than the table_privclass.trans_mask length.</li>
    <li>Added missing information about the recipients to case history for Email In action.</li>
    <li>Added missing information about the action type and the recipients to case history for Email Out action.</li>
    <li>Added missing information about the user performing an action to case history.</li>
    <li>Fixed a bug about setting incorrect value on time bomb flag for Action Item Change Status action.</li>
  </ul>
</li>
</ul>
<h3>Version 3.3.4</h3>
<ul>
<li>Core:
  <ul>
    <li>Fixed bugs in CreateAttachmentRecord to properly use metadata from WorkflowObjectInfo. It is now possible to use worflow objects which have been aliased.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Wrap password in quotes when setting/changing a user's password on Oracle databases.</li>
    <li>Fixed a bug causing nested BOM parts being installed at a wrong site-part-to-site-part level.</li>
    <li>Fixed bugs with CaseTimeAndExpenses object properties being ignored or improperly handled.</li>
  </ul>
</li>
</ul>
<h3>Version 3.3.3</h3>
<ul>
<li>Core:
  <ul>
    <li>Added SqlHelper configuration setting <em>fchoice.sqlcommandtimeout</em> which controls how long a SQL query is allowed to run. The .Net default (30 seconds) is used unless this specified.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Wrap password in quotes when setting/changing a user's password on Oracle databases.</li>
  </ul>
</li>
</ul>
<h3>Version 3.3.2</h3>
<ul>
<li>Core:
  <ul>
    <li>Fixed problem with incorrect activity entry additional information for \'Add Appointment\' operation for an employee.</li>
    <li>Fixed ClarifyGeneric bug where multiple traversals against the same MTO relation would select the relation foreign-key field multiple times. This was mostly harmless on SQL Server but caused an exception on Oracle.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Create Case: Add support for multi-level case types in Amdocs 13.</li>
    <li>Update Case and Subcase Commitment APIs:
      <ul>
        <li>Commitment due date will now only be updated when the given commitment date does not match what is already in the database.</li>
        <li>Time bombs for sending email notifications are now correctly created when changing the Commitment due date or the warning interval.</li>
      </ul>
    </li>
  </ul>
</li>
</ul>
<h3>Version 3.3.1</h3>
<ul>
<li>Core:
  <ul>
    <li>Fixed problem populating the SchemaCache on SQL Server systems where ADP tables have indexes.</li>
  </ul>
</li>
</ul>
<h3>Version 3.3.0</h3>
<ul>
<li>
  <p><b style="color:red;">Requirement Change</b> The fcSDK is now built on the .Net 4.0 framework. It is now required that the .Net 4.0 framework is installed.</p>
</li>
<li>Core:
  <ul>
    <li>ISchemaField now exposes type divination helpers: IsString, IsDate, IsInteger, IsNumeric.</li>
    <li>Corrected the id field used for Workflow operations on Workaround objects.</li>
    <li>Oracle Data Provider for .NET (ODP.NET) support has been added.</li>
    <li>Fixed a bug leading to incorrect SQL being generated for traversing operations.</li>
    <li>Fixed a bug in <a href="FChoice.Common~FChoice.Common.State.StateManager~LoadState.html">StateManager.LoadState</a> which was causing the session timeout to get updated. Consumers of load state should now call <a href="FChoice.Common~FChoice.Common.State.StateManager~ResetTimeout.html">ResetTimeout</a> to up date the state timeout if desired.</li>
    <li>Added <a href="FChoice.Common~FChoice.Common.State.StateManager~IsStateExpired.html">StateManager.IsStateExpired</a> method to better detect expired session states.</li>
    <li><a href="FChoice.Common~FChoice.Common.State.RemoteStateManager.html">Remote state managers</a> have been marked obsolete.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Some activity entry additional information fields containing date strings were not being converted to server time.</li>
    <li>Fixed an Update Site issue where secondary support employee could only be cleared when updating a site by database identifier.</li>
    <li>Fixed the history headings of Internal Note Logs for cases and subcases.</li>
  </ul>
</li>
</ul>
<h3>Version 3.2.9</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Added new .Net APIs to allow objids to be used for contact identification.</li>
    <li>The .Net UpdateContactByObjidSetup has a contactObjid property that can be set for use in the new UpdateContactByObjid API.</li>
  </ul>
</li>
</ul>
<h3>Version 3.2.8</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>FCCL - Updated Fulfill APIs to improve performance when updating part request information.</li>
    <li>FCCL - Ship API now returns database identifier of the ship_parts record it creates.</li>
  </ul>
</li>
</ul>
<h3>Version 3.2.7</h3>
<ul>
<li>Core:
  <ul>
    <li>LocaleCache: Improved handling of daylight savings periods to support periods which span multiple years. For example, in New Zealand, daylight savings starts in September and ends in April.</li>
    <li><b style="color:red;">BREAKING API CHANGE</b> to the <a href="fcSDK~FChoice.Foundation.Clarify.DataObjects.DaylightSavingsCollection.html">DaylightSavingsCollection</a>. This collection had a string based indexer by year which has been replaced with the <a href="fcSDK~FChoice.Foundation.Clarify.DataObjects.DaylightSavingsCollection~GetPeriod.html">GetPeriod</a> method.</li>
  </ul>
</li>
<li>Data Verifier:
  <ul>
    <li>Updated to check for overlapping daylight savings periods.</li>
  </ul>
</li>
</ul>
<h3>Version 3.2.6</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>FCINTER - Updated change_contact API to allowing objids to be used for contact and site identification.</li>
  </ul>
</li>
<li>Core:
  <ul>
    <li>DatabaseParameterFactory overload now accepts a schema field object in place of table and field names.</li>
    <li>ISchemaField now exposes CommonType and helper IsSearchable method.</li>
  </ul>
</li>
</ul>
<h3>Version 3.2.5</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Added new .Net APIs to allow large internal note and phone logs to cases and subcases. The APIs use a unlimited text field to allow larger internal notes to be recorded. All other capabilities of Not/Phone logs are also available.</li>
    <li>The .Net ChangeCaseContactSetup object now has a SiteIDNum property that can be set for use in the ChangeCaseContact API.</li>
  </ul>
</li>
<li>Core:
  <ul>
    <li>Auto destination now supports db transactions.</li>
    <li>Fixed a bug so that the proper default element for HGBST list level is returned.
      <ul>
        <li>If no default element is designated - return an active element with the lowest rank.</li>
        <li>If no default element is designated and there are no active elements - return an inactive element with the lowest rank.</li>
      </ul>
    </li>
  </ul>
</li>
</ul>
<h3>Version 3.2.4</h3>
<ul>
<li>Core:
  <ul>
    <li>To workaround a bug in how the .Net Oracle client handles decimal values with high precision, we now truncate (via SQL) decimal fields to a precision matching what is specified in the Clarify schema.</li>
    <li>The result of a DateTime conversion to a timezone with no GMT offset now has <a href="http://msdn.microsoft.com/en-us/library/system.datetime.kind.aspx">DateTime.Kind</a> value set to Utc</li>
    <li>Resolved a rare configuration issue that could occur during SDK initialization if DBProviderFactory was used before the SDK initialization.</li>
    <li><strong>API change:</strong> To facilitate testing Hgbst and Gbst lists types are now exposed via Interfaces rather than concrete classes.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Added a schema update for a participant table index which on pre Clarify 11 databases is missing a field.</li>
    <li>Fixed a bug in <a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdateSite.html">UpdateSite</a> that would cause the site name to be overwritten with the siteId if the site name input parameter was blank.</li>
  </ul>
</li>
</ul>
<h3>Version 3.2.3</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>
      <p>A few of our APIs do multiple database updates breaking our convention that APIs should have transactional atomicity. These multi-update APIs are now invoked in a single transaction.</p>
      <p>The following APIs are affected:</p>
      <h5>Logistics Toolkit</h5>
      <ul>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~PartTransfer.html">PartTransfer</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest.html">BackorderPartRequest</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.html">FulfillPartRequest</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail.html">CreatePartRequestDetail</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReceivePartRequest.html">ReceivePartRequest</a></li>
      </ul>
      <h5>FieldOps Toolkit</h5>
      <ul>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~PartTransfer.html">PartTransfer</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedExchange.html">LogPartsUsedExchange</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedConsume.html">LogPartsUsedConsume</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedInstall.html">LogPartsUsedInstall</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedRemove.html">LogPartsUsedRemove</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedUpgrade.html">LogPartsUsedUpgrade</a></li>
      </ul>
      <br/> Note: When calling the overload of these APIs having a transaction argument, as always, the API will use the given transaction.
    </li>
  </ul>
</li>
<li>Core:
  <ul>
    <li>Fixed a bug in ClarifyGeneric where inserting or updating a row on a table who schema has change fields present but no change date field would throw an error.</li>
  </ul>
</li>
<li>Installer:
  <ul>
    <li>Symbols for Dovetail SDK assemblies (.pdb files) are now packaged with the installer. Symbol files can be used to provide Dovetail Support with more context about unexpected exceptions when they occur. They are not normally needed and do not have to be deployed with your code but they are good to have around in case of emergency.</li>
  </ul>
</li>
</ul>
<h3>Version 3.2.2</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Fixed a bug in APIs which increment part request header sequence numbers within a transaction. Sequence incrementation is now enlisted in the current transaction.
      <br/>
      <p><b style="color:red;">Important:</b> Oracle users should <a href="fcsdk_install.html#installstoredprocedures">reapply the stored procedures</a>. Part of this fix involves an update to the <i>fc_next_pr_seq</i> stored procedure.</p>
    </li>
  </ul>
</li>
</ul>
<h3>Version 3.2.1</h3>
<ul>
<li>Core:
  <ul>
    <li>Compatibility generic <a href="FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCGeneric~UpdateAll.html">UpdateAll</a> calls are now enlisted in the current session transaction when present. This problem affected some Toolkit APIs.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Fixed a bug in <a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~CreateContractLineItem.html">CreateContactLineItem</a> caused by a poorly constrained database query when the serial number argument was blank.</li>
  </ul>
</li>
<li>Demos:
  <ul>
    <li>Fixed log4net version details in the web demo application configuration.</li>
  </ul>
</li>
</ul>
<h3>Version 3.2.0</h3>
<ul>
<li>
  <h4>Developers: We've added Nuget support</h4>
  <blockquote><a href="http://nuget.org/">NuGet</a> is a Visual Studio extension that makes it easy to install and update libraries and tools in Visual Studio.</blockquote>
  <p>Dovetail SDK now ships a <em>.nupkg</em> file which you can deploy to your company's local nuget package source. The main idea behind shipping a Nuget package with the installer is to make it easy easy for .Net developers to install and update references to Dovetail SDK .Net assemblies.</p>
</li>
<li>Core:
  <ul>
    <li>Fixed a bug on Oracle where contact and user login names were case sensitive. This has been fixed and login names are now case insensitive on Oracle.</li>
    <li>Legacy support for Sybase has been removed.</li>
    <li>Logging library log4net has been updated to <a href="http://logging.apache.org/log4net/release/release-notes.html">version 1.2.11</a>.</li>
  </ul>
</li>
<li>Data Verifier:
  <ul>
    <li>Added data verifier tests to check for duplicate timezone names and for mismatched case-sensitive timezone names field values (Oracle).</li>
  </ul>
</li>
</ul>
<h3>Version 3.1.0</h3>
<ul>
<li>Schema:
  <ul>
    <li>The SDK now includes optional schema for creating an exclusive relation to the user table using existing fields on the participant table. This allows participants that are users to be used as business rule recipients. To take advantage of this optional functionality, apply this schema using the file from the schema directory that is appropriate for your environment and schema editing tool.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Enhanced the <code><a href="fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager~Yank.html">Yank API</a></code> so that it creates a participant record for the user from which the workflow object was yanked. This enables for creation of a business rule to notify the user when an object was yanked from them. Note this requires the optional exclusive relation from participant2user be added to your schema.</li>
    <li>When <code><a href="fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager~CreateAttachmentRecord.html">Creating an Attachment Record</a></code> the doc_inst record created is now related to the activity entry generated for that attachment activity.</li>
  </ul>
</li>
<li>Core:
  <ul>
    <li><code><a href="fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.html">ClarifyGenerics</a></code> have a new property <code><a href="fcSDK~FChoice.Foundation.FCGeneric~RestrictionGroup.html">DataRestrictionGroup</a></code> which now allows generic level control of the data restriction group used. Previously the restiction group was only settable at the <code><a href="fcSDK~FChoice.Foundation.Clarify.ClarifySession.html">ClarifySession</a></code> level. When a ClarifyGeneric is created it will default to the session's restriction group. There is also a new convenience method on ClarifyGeneric for <a href="fcSDK~FChoice.Foundation.FCGeneric~ChangeRestrictionGroup.html">changing restriction group by name</a>.</li>
  </ul>
</li>
</ul>
<h3>Version 3.0.0</h3>
<ul>
<li>
  <h4 style="color:red;">Requirement Change</h4>
  <ul>
    <li>
      <p>The Dovetail SDK is now built on the .Net 3.5 framework. It is now a requirement that the .Net 3.5 framework is installed.</p>
    </li>
  </ul>
</li>
<li>
  <h4>Dovetail SDK now has 32 bit and 64 bit installers available.</h4>
  <ul>
    <li>
      <p>
        The primary reason this is necessary is for applications using COM Compatibility (e.g. Dovetail Agent and Dovetail Admin, and Dovetail SelfService) to have the correct native COM registration settings. Previously, applications that use the COM interfaces were required to run in a 32 bit (SysWow64) mode.
      </p>
      <p>Customers using Dovetail Agent version 4.4 should use the 32bit installer as attachment uploading in those versions has a dependency on a 32bit COM object requiring them to be run in 32bit mode.</p>
      <p>It is currently possible to install both 32 and 64 bit installers side by side.</p>
      <h5 style="font-size=smaller">For existing 64 bit SDK users - Migrating from the 32 bit installer to the new 64 bit navtive installer:</h5>
      <p>
        If running command-line applications that use COM Compatibility (such as JavaScript or VBScript using cscript.exe) on a 64 bit machine, they should be executed from the standard 64 bit command prompt. This is a change, as previous versions of the SDK only supported 32 bit COM applications.
      </p>
      <p>
        Additionally, contact (web_user) authentication is now supported in 64 bit environments. This is commonly used in SelfService/eSupport applications. The non-managed fc_crypt2.dll library is used for contact password encryption and decryption. The correct version of this library (either 32 or 64 bit) will be installed as part of the Dovetail SDK installation process.
      </P>
    </li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Changed fulfill and receive APIs - when doing partial request processing, new part request detail will default to the status/condition of the original.</li>
    <li>For partial Receive actions - the new part request detail objid and detail number are now returned in the toolkit result.</li>
    <li>Fixed a bug in Receive API where the AutoClose was generating an exception when creating the activity log.</li>
    <li>Fixed documentation for modify_case to have the correct method signature.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.12</h3>
<ul>
<li>Installer Fixes:
  <ul>
    <li>Deploying demo web applications to servers with multiple IIS web sites is now supported.</li>
  </ul>
</li>
<li>.Net API:
  <ul>
    <li>Added utilty method to StringCache to find supported locales.</li>
    <li>Factored user authentication support into ClarifyAuthenticationService. Simplifying non session user authentication.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Added an error check to prevent exception being thrown during a part transfer where the part instance detail could not be found.</li>
  </ul>
</li>
<li>Core:
  <ul>
    <li>Corrected a bug in ListCache and LocaleCache detection of objects with bad data.</li>
    <li>
      Fixed a bug in conversion of datetimes between timezones. This issue would only occur if either the source or the destination did not participate in daylight savings time, and only if the destination timezone had a greater GMT offset than the source timezone.
    </li>
  </ul>
</li>
</ul>
<h3>Version 2.4.11</h3>
<ul>
<li>Workflow:
  <ul>
    <li>Fixed a regression when finding the next available file name for an attachment.</li>
  </ul>
</li>
<li>Core:
  <ul>
    <li>Contact authentication now requires that the contact have active contact and web_user records</li>
    <li>Added new Generic filter creation overloads for AND and OR filters. These new over loads allow you to give an array of Filters which you need to be ANDed or ORed together. Previously you could only apply AND and OR to two filters at a time.</li>
    <li>Added better error prevention for LocaleCache and ListCache. This will prevent most cache-releated Application start-up errors.</li>
    <li>API added for making it easier to generate ClarifyGeneric filters. See the <a href="fcSDK~FChoice.Foundation.Filters.FilterExpression.html">FilterExpression class.</a></li>
  </ul>
</li>
<li>Data Verifier:
  <ul>
    <li>Added grouping for data verifier tests to add context for test categories.</li>
    <li>Added data verifier test to check for duplicate country-timezone MTM table entries.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.10</h3>
<ul>
<li>Core:
  <ul>
    <li>Interfaces for the LocaleCache and ListCache are now provided to make all caches more testable.</li>
    <li>Fixed Workflow Move operation so it would work non-transactionally.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>FCINTER - Added new update_contact_objid_list API to allow a specific contact to be updated. This allows the correct contact to be updated if duplicate contacts (by name/phone) are allowed.</li>
    <li>FCCS - Removed the extraneous ", State = Open" from additional info when closing a case.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.9</h3>
<ul>
<li>Installer:
  <ul>
    <li>Dovetail SDK assemblies are now correctly registered with Visual Studio .Net to on 64bit versions of Windows.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.8</h3>
<ul>
<li>Data Verifier:
  <ul>
    <li>Fixed crash when saving test results in the Data Verifier application (only applies to .Net 3.5 environments.)</li>
    <li>Added data verifier test to check for duplicate view fields.</li>
    <li>Explicitly setting Data Verifier to build as a 32 bit application so that COM features can be verified in a 64 bit environment.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Fixed the CreateSubcase API: Added transaction support for the GetNextSubcaseNumber - this method was not correctly enlisting the current transaction if available.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.7</h3>
<ul>
<li>Core:
  <ul>
    <li>Fixed an Oracle performance issue with the SQL generated when querying empty strings as NULL (the default behavior.)</li>
    <li>File caching is now disabled by default. This feature does not significantly boost startup time on modern computers and often causes confusion about cache freshness after schema changes.</li>
    <li>Creating sessions without a username and password no longer causes failed logins.</li>
    <li>Fixed another Generic usage scenario related to distinct queries against tables or views ordered by searchable fields.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Fixed an Oracle performance issue with the SQL generated when querying empty strings as NULL (the default behavior.)</li>
    <li>Fixed the RelateCaseToParentCase API - Now enforcing that a case must be designated as a parent case before a child case can be related to it.</li>
    <li>Fixed the UpdateCaseCommitment and UpdateSubcaseCommitment APIs - Now enforcing that the specified Commitment must be related to the specified Case/Subcase to be updated.</li>
    <li>Fixed the ForwardSolution and RejectSolution APIs - The notes field is not appended to the Solution description field.</li>
    <li>Fixed the Reject&lt;object&gt; APIs - The activity entry for a Reject action now uses the "RETURN" keyword instead of "FORWARD".</li>
    <li>Fixed the Accept&lt;object&gt; APIs - The performing user must be a member of the specified queue to perform an Accept.</li>
    <li>Fixed the Workflow APIs - Acting and target users now need to be active in order for workflow operations to be successful. For example only active users can Assign a case to another active user.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.6</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Fixed database transaction support for toolkit workflow APIs and the Log Email In API. These APIs were not correctly enlisting workflow operations into the current transaction.</li>
  </ul>
</li>
</ul>
<ul>
<li>Core:
  <ul>
    <li>Changed the order of how authentication is ordered during application initialization. Dovetail SDK will now attempt to use Clarify encrypted credentials based on the connection string first and then if that fails unencrypted credentials.</li>
    <li>Fixed an Generic usage scenario which resulted in bad SQL when doing distinct queries against views ordered by searchable fields.</li>
    <li>Fixed a localization issue that prevented creating Clarify or Compatiblity sessions when the computer or session culture is set to Turkish.</li>
    <li>Workflow Manager GetNextFileName now truncates the filename to fit within the attachment title field.</li>
    <li>Fixed a bug related to distinct generic queries being sorted by searchable fields that were not also in the list of data fields selected.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.5</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Removed dependency on VisualBasic.Compatibility.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.4</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Updating a dialogue or communication whose dialogue is closed is now allowed.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.3</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Corrected bugs related to the status and act entries created when using the new Dialogue and Communication APIs.</li>
  </ul>
</li>
<li>Core:
  <ul>
    <li>Workflow Manager now creates all related participant records for operations on object types using the fact/participant model.</li>
    <li>Workflow Manager now supports database transactions. </li>
  </ul>
</li>
</ul>
<h3>Version 2.4.2</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Added three new .NET InterfacesToolkit APIs. These new APIs are not exposed via COM compatibility.
      <ul>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateDialogue.html">CreateDialogue</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdateDialogue.html">UpdateDialogue</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateCommunication.html">CreateCommunication</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdateCommunication.html">UpdateCommunication</a></li>
      </ul>
  </ul>
  </li>
  <li>Core:
    <ul>
      <li>Fixed a bug in the SchemaCache where IsTimeZone would throw an exception if there are duplicate time zones.</li>
      <li>Updated GetSafeBooleanFieldValue to return False for DBNull.Value</li>
      <li>Correct problem where on Sql Server generics doing parameterized queries against sql view fields were being typed as text.</li>
    </ul>
  </li>
  <li>Compatibility:
    <ul>
      <li><b style="color:red;">Security Support Added</b>
        <br/> To help avoid SQL Injection attacks we have added support to FCSqlExec for binding parameters (via <a href="AddSqlParameter.html">AddSqlParameter</a>). We recommend that all SQL queries built using user input should executed with FCSqlExec using bind parameters. For more information see the <a href="Execute.html">Execute</a> and <a href="ExecuteReturnRows.html">ExecuteReturnRows</a> for examples.</li>
    </ul>
  </li>
</ul>
<h3>Version 2.4.1</h3>
<ul>
<li>Core:
  <ul>
    <li>Fixed a bug in the SchemaCache where IsValidField would return true when given a field name that is a many to many relation name. Relation names will still return true if the schema table contains the foreign key for that relation.</li>
    <li>When APIs are building case history additions that exceed the maximum case history size limit (~32K) will cause the history to be slightly changed in order to trigger the change date field. This change allows for API calls to consistently update the case's last modified timestamp.</li>
    <li>Updated ClarifyVersion to support schema revisions newer than Clarify 12.5.</li>
    <li>Added better logging of Session Manager configuration settings.</li>
  </ul>
</li>
<li>Compatibility:
  <ul>
    <li>Corrected a bug in FCFO: modify_time_log and modify_expense_log were replacing entire case history with the most recent entry.</li>
  </ul>
</li>
</ul>
<h3>Version 2.4.0</h3> In this release we focused on adding support for Amdocs 6 thru Amdocs 7.5.
<ul>
<li>Core:
  <ul>
    <li>Generics now support inserting records for tables having a guid field. New records created for a type having a guid field present will have a globally unique value assigned to that field.</li>
    <li>Generics will ignore and not allow manipulation of identity fields. Identity fields are rarely used in the baseline schema and are defined as table fields having a generic field id of 154.</li>
    <li>Fixed a bug caused by the maximum datetime value being slightly too early. It is now <em>12/31/4712 11:59:59PM</em>.</li>
  </ul>
</li>
<li>Toolkits:
  <ul>
    <li>The create contact API now sets, when present, the contact_id field using the Contact ID numbering scheme.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.20</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Updated the Time &amp; Expense APIs to improve the Case History interaction. The notes for the onsite log will be included in the history text when the notes get updated thru a create or update Time or Expense API call.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.19</h3>
<ul>
<li>Core:
  <ul>
    <li>Corrected regression where lookups of missing strings in the StringCache would throw exceptions.</li>
    <li>Corrected a configuration problem with the Dovetail SDK Web Service and demos web application configuration files. The reference to the Log4Net configuration handler is now fully qualified.</li>
  </ul>
</li>
<li>Compatibility:
  <ul>
    <li>Corrected a bug in FCCL: receive_pr and receive_pr_no_trans were backwards in respect to finalizing the transition for the Receive process.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>Errors occurring when creating cases and subcases and employees were not getting logged and would be thrown even when the session ThrowErrors property was false.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.18</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Corrected a bug in the Before and After Case/Subcase Status relations for an Email Log in LogCaseEmailIn and LogSubCaseEmailIn.</li>
    <li>Corrected the Case/Subcase history note that gets generated during LogCaseEmailIn and LogSubCaseEmailIn.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.17</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Added four new .NET SupportToolkit APIs. These new APIs are not exposed via COM compatibility.
      <ul>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmailIn.html">LogCaseEmailIn</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubCaseEmailIn.html">LogSubCaseEmailIn</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AppendHistoryToCase.html">AppendCaseHistory</a></li>
        <li><a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AppendHistoryToSubCase.html">AppendSubCaseHistory</a></li>
      </ul>
    </li>
  </ul>
</li>
</ul>
<h3>Version 2.3.16</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>LogPartsUsed
      <X> APIs now create time bombs in the correct order so that update inventory events occur last.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.15</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Added capability in create_time_bomb to specify the escalation time. This will allow APIs to be clear which order the time bombs that get generated should be processed.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.14</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Corrected a bug for the UpdatePartRequestDetail API where it did not related the time bomb to the current employee</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.13</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Corrected a bug for the LogPartsUsedConsume API where it incorrectly related the Consume act_entry to the demand_dtl record - now it correctly relates it to the site</li>
  </ul>
</li>
<li>General:
  <ul>
    <li>Oracle Session Manager now checks to see if sessions exist before retiring expired sessions.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.12</h3>
<ul>
<li>Core:
  <ul>
    <li>Corrected a bug for Ms Sql Server unicode databases that was introduced in version 2.3.9 causing NText fields to be treated as non-unicode data.</li>
  </ul>
  <ul>
    <li>Oracle queries involving large text fields (Long, CLOB) now set the field's data type based on existing fields in the database rather than the version of the database platform.</li>
    <li>Dovetail SDK performance counters are now disabled by default. The configuration <a href="fcsdk_config_basic.html#fchoice.perfcountersenabled">documentation has been updated</a> to reflect this.</li>
  </ul>
</li>
<li>Compatibility:
  <ul>
    <li>Corrected an issue where methods that return ADO Recordsets such as FCSqlExec or GetTimezoneList could throw an error when returning unicode data.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.11</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>FieldOps toolkit LogPartsUsed API - The session user is now related to the part_trans record when no user is specified. Also, the correct timebombs and activity entries for part request details were not always being created.</li>
    <li>Logistics toolkit CreatePartRequestDetail API - A case modified timebomb is now created when a case id is specified.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.10</h3>
<ul>
<li>Core:
  <ul>
    <li>Fixed issue where AppendFilterInList could generate SQL that was not compatible with the database for large lists.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.9</h3>
<ul>
<li>Core:
  <ul>
    <li>Fixed Oracle issue with inserting or updating more that 4000 bytes to Clob fields.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.8</h3>
<ul>
<li>General:
  <ul>
    <li>Fixed problem with how additional fields to some API calls were being processed.</li>
    <li>Error messages for exceptions thrown by Dovetail SDK were not being retrieved properly. Error messages not found in the StringCache are now retrieved from the \'ErrorStrings\' resource in the thrown exception's assembly.</li>
    <li>Fixed a problem with the installer where it was adding incorrect database connection settings on configuration files without existing settings.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.7</h3>
<ul>
<li>General:
  <ul>
    <li>A dependency issue was fixed with the License Installer.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.6</h3>
<ul>
<li>Core:
  <ul>
    <li>The <code><a href="fcsdk_config_basic.html#fchoice.clarify.ignoredatetimemilliseconds">fchoice.clarify.ignoredatetimemilliseconds</a></code> configration setting was not being honored for change date fields and for normal DateTime fields when the ConvertTimeZone session property was false.</li>
  </ul>
</li>
<li>Compatibility:
  <ul>
    <li>Fixed problem with GetHgbstList failing for list elements having titles with leading or trailing spaces.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.5</h3>
<ul>
<li>Core:
  <ul>
    <li>Clarify SQL Views were not being added to the Schema Cache.</li>
    <li>The Schema Cache failed to load integer and double fields when they contained NULL values. They now default to zero when a NULL is in the database.</li>
  </ul>
</li>
</ul>
<h3>Version 2.3.4</h3>
<ul>
<li>API Toolkits : The following bugs have been fixed:
  <ul>
    <li>FCFO - The activity logs created by log_parts_used are now consistent with the Clarify client.</li>
  </ul>
</li>
<li>Core:</li>
<ul>
  <li>The installer was not adding the fcSDK bin directory to the system path. Classic asp web applications require that fc_crypt2.dll be in the path.</li>
  <li>2.3.3 introduced a bug in the ListCache for Global Application Lists causing elements with duplicate titles to be excluded from the cache.</li>
</ul>
</ul>
<h3>Version 2.3.3</h3>
<ul>
<li>API Toolkits : The following bugs have been fixed:
  <ul>
    <li>FCFO - create_onsite_log was validating the resolution against the wrong resolution list.</li>
    <li>FCFO - modify_expense_log was not properly updating the onsite_log if the expense rate was changed from non-zero to zero.</li>
    <li>FCFO - modify_expense_log could throw an error: exp_type is not a valid field.</li>
    <li>FCFO - modify_expense_log was not properly updating the onsite_log if the billable flag was changed.</li>
    <li>FCFO - modify_time_log was not properly updating the onsite_log if the duration was changed from non-zero to zero.</li>
    <li>FCFO - modify_time_log was not properly updating the onsite_log if the billable flag was changed.</li>
    <li>FCFO - log_parts_used was not properly updating existing non serialized site parts. It had been creating additional site part records.</li>
    <li>FCFO - log_parts_used consume no longer updates the site config.</li>
    <li>FCFO - log_parts_used consume now moves the inventory part into the Service COGS expense GL location rather than the Part Used Variance expense GL location.</li>
    <li>FCFO - log_parts_used could throw a null reference exception when setting the from location and that site configuration was not being updated.</li>
  </ul>
</li>
<li>Core:</li>
<ul>
  <li>ClarifyApplication initialization no longer fails when Hierarchical Lists, and Restriction Groups have entries with duplicate names. A warning is now logged when the duplicate item is encountered during initialization.</li>
</ul>
</ul>
<h3>Version 2.3.2</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>FCFO - The LogPartsUsed methods weren't properly setting the hdr_ind column on the part_inst record when the quantity of quantity-tracked parts was negative. It now correctly sets the hdr_ind to 2 if the quantity is negative, and to 3 if the good and bad quantity are both zero.</li>
  </ul>
</li>
<li>Compatibility:</li>
<ul>
  <li>FCSession.LoginTime had a bug that could cause a Stack Overflow error. This has been fixed. </li>
</ul>
</ul>
<h3>Version 2.3.1</h3>
<ul>
<li>
  <p><b style="color:red;">Requirement Change</b> The fcSDK is now built on the .Net 2.0 framework. It is now required that the .Net 2.0 framework is installed.</p>
</li>
<li>
  <p><b style="color:red;">Assembly Structure Change</b> The assemblies related to COM compatibility and the API Toolkits have been moved into their own assemblies. This change will not affect COM users. If you are using the FChoice.Toolkits.Clarify namespace your projects will need a reference to FChoice.Toolkits.Clarify.dll.</p>
</li>
<li>API Toolkits:</li>
<ul>
  <li>FCFO - The LogPartsUsed methods were not creating the proper activity logs when an inventory transaction occurred. It was creating an activity entry of \'Transfer\'. It now correctly creates an activity entry of \'Update Inventory\'.</li>
  <li>FCFO - LogPartsUsedRemove now allows specifying a RemoveQuantity.</li>
  <li>FCFO - The LogPartsUsed methods have been modified so as to allow the quantity of an inventory location to go negative.</li>
  <li>FCCL - A bug was fixed in UpdatePartRequestDetail. Previously, if a user didn't specify a value of an optional parameter, the value was over-written. This has been fixed.</li>
  <li>FCFO - LogPartsUsed was not properly relating the part_used and part_trans records. This has been fixed.</li>
  <li>FCFO - LogPartsUsed was not properly updating the PartRequestDetail condition. This has been fixed.</li>
  <li>FCCL - The Receive and Fulfill methods were creating an extra activity entry and time bomb. This has been fixed.</li>
</ul>
<li>Compatibility:</li>
<ul>
  <li>Methods that return an ADO recordset (such as GetTimeZoneList) could throw an error if a custom column had been added to the table with a datatype of Guid or byte array. These datatypes are now handled properly.</li>
</ul>
<li>Core:</li>
<ul>
  <li>ClarifyApplication can now be removed from the AppDomain using <a href="fcSDK~FChoice.Foundation.FCApplication~DeInitialize.html">DeInitialize</a></li>
</ul>
</ul>
<h3>Version 2.2.6</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>FCCL, FCFO - An unnecessary potentially lengthy query was removed from PartTransfer.</li>
    <li>FCFO - LogPartsUsedRemoveSetup property InstallAtSite has no effect and has been marked obsolete.</li>
    <li>FCFO and FCCL APIS that performed a part transfer: Fulfill, PartTransfer, Receive, LogPartsUsed - could have exceptions that did not bubble up to the caller.</li>
    <li>FCFO - LogPartsUsed was not always querying for the "From Inventory Location" which could cause a null reference exception.</li>
  </ul>
</li>
<li>Compatibility:</li>
<ul>
  <li>FCApplication: Added <a href="GetGbstElmByID.html">GetLocalizedGbstElmById</a> and <a href="GetGbstDefault.html">GetLocalizedGbstDefault</a> methods.</li>
</ul>
</ul>
<h3>Version 2.2.5</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>Fixed bug involving improperly formatted datetimes when using the AdditionalFields property in Toolkit APIs. The FCSession's
      <A href="fcSDK~FChoice.Foundation.FCSession~CurrentCulture.html">CurrentCulture</a> is now used to properly format the datetime.</li>
    <li>FCCL - <a href="FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.html">FullfillPartRequest</a> result now includes the objid and id_number of the PartRequestDetail created when a partial fulfill occurs.</li>
  </ul>
</li>
</ul>
<h3>Version 2.2.4</h3>
<ul>
<li>API Toolkits:
  <ul>
    <li>FCINTER and FCCL - Creating and updating contacts and modifying a part request detail now output timebomb information for Rulemanager to use.</li>
  </ul>
</li>
</ul>
<h3>Version 2.2.3</h3>
<ul>
<li>Core:
  <ul>
    <li>SqlHelper - Corrected bug in batching mechanism for INLIST queries.</li>
  </ul>
</li>
<li>General:
  <ul>
    <li>The fcSDK installer now requires that .Net 1.1 Service Pack 1 be present. This is due to a breaking change in .Net 2.0 that affects <a href="fcsdk_install.html#security">Performance Counter</a> support. Please see <a href="http://www.dovetailsoftware.com/resources/solutions/235_fcSDK_Installer_ends.aspx">this solution</a> for more details.</li>
  </ul>
</li>
</ul>
<h3>Version 2.2.2</h3>
<ul>
<li>Core:
  <ul>
    <li>Fixed a bug when using FCGeneric.NOW_DATE that would use the application host DateTime rather than the database's. This problem would only exibit when Application Host and Database server timezones were different.</li>
    <li>Fixed issue with an Sql Server 7 when grace license events occurred.</li>
  </ul>
</li>
<li>API Toolkits:
  <ul>
    <li>FCSFA and FCCC - Create Contract Line Item : Two validations have been eliminated for Clarify compatibilty. It is now allowed to create Contract Line Items for tracked non serial numbered parts (Error code -11) and serial numbered parts with quantity greater than 1 (Error code -12).</li>
  </ul>
</li>
</ul>
<h3>Version 2.2.1</h3>
<ul>
<li>Core:
  <ul>
    <li>FCGeneric.CloseGenerics() now correctly clears data from the generic's DataTable.</li>
    <li>Fixed a multithreaded locking issue during StateManager initialization.</li>
    <li>Loading of the SchemaCache could fail in rare situations due to non unique keys for schema view information objects.</li>
    <li>Fixed bug where Workflow's Yank operation would create the wrong kind of <i>time_bomb</i> object.</li>
  </ul>
</li>
<li>Compatibilty:
  <ul>
    <li>FCSession.CloseAllGenerics() had a bug preventing it from working correctly.</li>
  </ul>
</li>
</ul>
<h3>Version 2.2</h3>
<ul>
<li>Core</li>
<ul>
  <li>
    <p><b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): FCGeneric.Filter has been renamed to <a href="fcSDK~FChoice.Foundation.FCGeneric~RawFilter.html">FCGeneric.RawFilter</a>. This was done to make room for the new Query Filtering mechansim.</p>
  </li>
  <li>There is a new Query Filtering mechanism in place that allows for more complex filters against Generic objects. Please take a look at the [Developer Walkthrough - Advanced Filtering](walkthroughs/filtering.md) for more information.</li>
  <li>
    <p>New optional <code><a href="fcsdk_config_basic.html#fchoice.clarify.ignoredatetimemilliseconds">fchoice.clarify.ignoredatetimemilliseconds</a></code> configration setting added to better support compatiblity with older versions of Clarify Classic Client.</p>
  </li>
  <li>Fixed login bug where an Employee's <i>last_login</i> was being incorrectly updated during a Contact login of the same <i>login_name</i>.</li>
  <li>On MSSQL <a href="fcSDK~FChoice.Foundation.FCSession~SetPassword.html">ClarifySession.SetPassword()</a> no longer requires that the application user have sysadmin rights.</li>
  <li>
    <p><b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): The string/name overloads (as opposed to the ID overloads) of the <code>GetFCString</code> method on <code>StringCache</code> now require another parameter: <code>applicationName</code> since application name is a required parameter to generate unique name identifiers for individual FC Strings. The lack of an <code>applicationName</code> argument was an oversight in previous versions of the fcSDK.</p>
    <p><b>IMPORTANT NOTE FOR CUSTOMERS USING CUSTOMIZED fcSDK ERROR MESSAGES</b>:</p>
    <p> Any existing strings that were imported via the fcerrors.dat and/or customized will have to be updated to have a proper application name. The default application name for all errors in the fcSDK is "fcSDK". If you wish to have multiple customized error messages for multiple instances of the fcSDK, you can override the application name using the <a href="fcsdk_config_basic.html">fchoice.fcstringappnameforerrors</a> configuration setting. For more information, see the <a href="fcsdk_config_basic.html">Basic Configuration Guide</a></p>
  </li>
</ul>
<li>Auto Destination</li>
<ul>
  <li>Rules with the <i>&lt;&gt;</i> operator were not being parsed properly. </li>
  <li>Stricter validation is now present for badly formed Rule Clauses.</li>
</ul>
<li>Compatibility</li>
<ul>
  <li>Fixed the interaction between FCGeneric.Delete() and cursor movement methods (MoveNext, EOF).</li>
  <li><a href="fcSDK~FChoice.Foundation.Clarify.Compatibility.FCApplication~InitializeFull.html">FCApplication.InitializeFull()</a> was not utilizing settings contained in fc.env. Configuration settings from the fc.env file are now pulled in but database authentication settings like <i>fchoice.dbtype</i> and <i>fchoice.connectionstring</i> are ignored.</li>
</ul>
<li>API Toolkits</li>
<ul>
  <li>All Toolkit setup objects that require a User session now have a <a href="fcSDK~FChoice.Toolkits.Clarify.Interfaces.UpdateContactSetup~UserName.html">UserName</a> property which if present is required when the ClarifySession's <a href="fcSDK~FChoice.Foundation.Clarify.ClarifyLoginType.html">login type</a> is Contact.</li>
  <li>Fixed datetime localization issues when APIs are invoked using non-US cultures.</li>
</ul>
</ul>
<h3>Version 2.1.3</h3>
<ul>
<li>Compatibilty: Fixed Compatibility issues when GetHgbst methods return no elements.</li>
</ul>
<h3>Version 2.1.2</h3>
<ul>
<li>Core</li>
<ul>
  <li>Licensing is now more strictly enforced for Session lifetime.</li>
  <li>Improved performance for parameterized queries against non-unicode string fields, allowing the database to optimize the query.</li>
</ul>
<li>Auto Destination</li>
<ul>
  <li>Fixed bug with AUTO_DISPATCH not being handled properly.</li>
  <li>Fixed bug with line returns in rule clauses causing rules to fail.</li>
  <li><b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): Classes: <code>Path2Sql</code> and <code>AutoDestRuleClause</code> have been marked internal.</li>
</ul>
<li>Upgrading from fcSDK 2.1.1 and earlier:
  <br/> If your implementation of fcSDK is using the Data Restriction feature, it is recommended to update your schema. The following change will allow the Data Restriction feature to benefit from improved performance.
</li>
<ol>
  <li>Add the \'fld_name\' field to table res_sql_clause. Refer to the <i>{install dir}\schema\fcSDK_schema.sch</i> file for the exact field definition.
    <br/>
  </li>
  <li>Populate \'fld_name\' with the name of the field being restricted in the data restriction's \'clause\' data field.
    <br/> For example, if your clause entry is <i>'x_res1 = |restriction1|'</i> you would populate the fld_name data field with <i>'x_res1'</i>.
  </li>
</ol>
</ul>
<h3>Version 2.1.1</h3>
<ul>
<li>Core</li>
<ul>
  <li>Fixed a bug in the <code>GetAttachmentFilePath</code> method on <code>WorkflowManager</code> that resulted in a non-unique file name being returned.</li>
  <li>Fixed ClarifySession timeout bug causing the default (Memory) session state manager to timeout sessions even if they were being retrieved.</li>
</ul>
<li>Compatiblity</li>
<ul>
  <li>The installer was missing the COM ADO Primary Interop Assembly. It is now installed to the GAC.</li>
</ul>
</ul>
<h3>Version 2.1</h3>
<ul>
<li>Caches</li>
<ul>
  <li>Streamlined loading of cache data, reduced memory footprint during lifetime of
    <!--DXMETADATA start type="Variable" name="ProductTitle" -->fcSDK
    <!--DXMETADATA end -->based applications.</li>
  <li>Added better support to <code>ListCache</code> for retrieving active or inactive list items.</li>
  <li>Renamed the throwErrors variant of <code>ListCache.GetHgbstList</code> to <code>ListCache.TryGetHgbstList</code></li>
  <li><b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): The signature of <code>ListCache.GetHgbstList()</code> has changed.</li>
  <li>Added optional support for localized GBST and HGBST (custom and user-defined pop-up) lists. Note that new schema changes are necessary to use this feature. Please see the install guide for more information.</li>
</ul>
<li>Core</li>
<ul>
  <li>Refactored handling of text data to be more CPU and memory efficient as well as culturally-aware for internationalization purposes.</li>
  <li>FCSession performance counters were not decrementing properly.</li>
  <li>Large Query count threshold (fchoice.sqlbigquerycountthreshold) was only working if with the time threshold was set (fchoice.sqlbigquerytimethreshold).</li>
  <li>A short-term session leak was happening when using the fcSDK .NET interfaces (Compatibility was not affected) and an exception was thrown during login.</li>
  <li>Implemented the IDisposable pattern for ClarifySession and FCSession. This makes it easier to manage the lifetime of short-term and/or one-off sessions.</li>
  <li>Fixed a bug when using a user with an encrypted password (such as a Clarify \'employee\' user) as the application user for the fcSDK (the one that appears in the fchoice.connectionstring parameter) which caused an exception to appear in the log incorrectly saying the login failed.</li>
  <li><b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): The <code>SetPassword</code> method on <code>ClarifySession</code> is now static (<code>Shared</code> in Visual Basic).</li>
  <li>Added new functionality to the WorkflowManager (in the <code>FChoice.Foundation.Clarify.Workflow</code> namespace):
    <ul>
      <li>New Method: <code>CreateActivityLogEntry</code> - Assists in creating an activity log entry for a particular object.</li>
      <li>New Method: <code>CreateCasePhoneLogActivityLogEntry</code> - Assists in creating the special phone_log entry when logging phone notes to a case.</li>
      <li>New Method: <code>CreateAttachmentRecord</code> - Creates doc_inst and doc_path records for file attachments on various objects.</li>
      <li>New Method: <code>GetAttachmentFilePath</code> - Generates a unique file name according to a configurable pathing scheme for storing of file attachments.</li>
      <li>New Method: <code>GetNextFileName</code> - Generates a unique file name given a folder path and a base file name.</li>
    </ul>
  </li>
</ul>
<li>Compatibility
  <ul>
    <li>FCSession Item collection now allows adding or updating items in the collection via COM.</li>
    <li>Toolkits: Fixed issue with many non-list Compatibility Toolkit methods not handling additional fields. </li>
    <li>Fixed issue with generics that are setup via <code>FCGeneric.TraverseFromParent</code> not being properly added to the parent Generic's bulk. <code>generic.Bulk.UpdateAll()</code> operations were not working correctly for this scenario.</li>
    <li>Fixed issue with
      <Code>FCGeneric.Delete</code> for generics involved in a Traversal. The row Position was not being set correctly after the Delete operation.</li>
    <li>New method <code>LogEx</code> added to FCSession and FCApplication to allow access to different log levels in FCFL.NET.</li>
    <li>List Cache methods now have improved Compatibility with FCFL for error handling.</li>
    <li><code>create_act_entry</code> and <code>AddAttachment</code> on <code>FCSession</code> now use the new methods on <code>WorkflowManager</code> (see above).
  </ul>
  </li>
  <li>General
    <ul>
      <li>Installer updated, integrating demos and allowing administrators better control over the install process.</li>
      <li>DataVerifier: Added a new HGBST test to determine whether there are any elements that reference more than two shows.</li>
      <li>The FChoice.Common, fcSDK, and log4net assemblies are now registered into the Global Assembly Cache (GAC) during install. These assemblies will appear in the \'Add Reference\' dialog in Visual Studio.NET.</li>
      <li>License Installer: Fixed crash when the Database login failed.</li>
    </ul>
  </li>
  <li>Web Services
    <ul>
      <li>The Web Services server application, client libraries, and demos are now included as part of this package.</li>
    </ul>
  </li>
</ul>
<h3>Version 2.0</h3>
<p>
Special:
<ul>
  <li><b>FCFL.NET</b> is no longer a separate product. It has been grouped together with new .NET-based API Toolkits to form the new <b><!--DXMETADATA start type="Variable" name="ProductTitle" -->fcSDK<!--DXMETADATA end --></b> product.
  </li>
</ul>
</p>
<p>
Fixes and Additions:
<ul>
  <li>Core <b><!--DXMETADATA start type="Variable" name="ProductTitle" -->fcSDK<!--DXMETADATA end --></b>:
    <ul>
      <li>
        <CODE>ClarifyGeneric.AppendFilter</CODE> overload added for filtering integer fields known to be booleans.</li>
      <li>
        <CODE>WorkflowManager.ChangeStatus</CODE> now supports the Open-Reject status for Part Requests.</li>
      <li>The <code>DataFields</code> property on <code>ClarifyGeneric</code> no longer has any effect during an Update operation. <code>DataFields</code> will only constrain Query operations. It is still the case, however, that only fields whose values have changed will be included in the UPDATE statement to the database to increase performance of update statements.</li>
      <li>Data: SqlHelper now catches exceptions thrown by the database client and ensures that they are logged (which used to not happen in all cases when FCFL.NET was used through the Compatibility layer). Also, error information will appear in the query summary to allow log filtering.</li>
      <li>
        <b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): The concept of a bulk has been completely removed from the .NET core APIs (FChoice.Foundation and FChoice.Foundation.Clarify). The compatibility layer (FChoice.Foundation.Clarify.Compatibility, or FCFLCompat.dll) is unaffected and will still behave like normal. <i>Existing applications written to the COM layer <b>WILL NOT</b> be affected by this change.</i> In order to work with <code>ClarifyGeneric</code>, you must first create a new <code>ClarifyDataSet</code> object. The <code>CreateGeneric</code> method has been moved from <code>ClarifySession</code> to <code>ClarifyDataSet</code>.
        <br> For more information on how to make the move from using <code>ClarifyBulk</code> and <code>ClarifySession.CreateGeneric</code> to <code>ClarifyDataSet</code>, please see the updated [<b>FCFL.NET</b> Developer Walkthrough](walkthroughs/fcfl-net-objects.md) of fundamental objects in <b>FCFL.NET</b> as well as the API documentation for the <code><a href="fcSDK~FChoice.Foundation.Clarify.ClarifyDataSet.html">ClarifyDataSet</a></code> object.
      </li>
      <li><code>LogManager</code> was not handling invalid configurations well. A stack overflow would occur when attempting to alert the user about the bad configuration.</li>
      <li>On Oracle 8.0.x and earlier databases, strings with non ascii or extended ascii charcters non ASCII strings would cause garbage data to be inserted into the database. <b>This setting effectively disables Unicode support for Oracle 8.0.x or earlier databases.</b> Non-ASCII charcters are converted to question marks (?). There is an application configuration setting <a href="fcsdk_config_basic.html">fchoice.oracle.forceascii7bit</a> to control this behavior.</li>
      <li>Multiline text fields do not always display properly in the Clarify windows client if there are carriage returns present. CRLF is now converted to LF. An application config setting <a href="fcsdk_config_basic.html">fchoice.clarify.convertcarriagereturns</a> was added to control this behavior.</li>
    </ul>
  </li>
  <li>Compatibility
    <ul>
      <li><code>FCBulk</code>
        <ul>
          <li><code>FCGeneric.CloseGeneric</code> was putting generics into the DefaultBulk causing scenarios where if the DefaultBulk was then queried, long running queries could result. Now, after CloseGeneric() is called the generic does not belong to a Bulk and should subsequently not be used.</li>
          <li>
            <CODE>FCSession.create_act_entry</CODE> now ensures that the act_entry generic and the generic of the related object are in the same bulk.</li>
          <li><code>FCBulk.Update</code> would not always relate records correctly.</li>
        </ul>
      </li>
      <li><code>FCGeneric.DBObjectName</code>
        <br/>
        <i>Note: for best performance do not use <code>FCGeneric.DBObjectName</code> to set a Generic's object name. Pass the object name to <code>CreateGeneric()</code>.</i>
        <ul>
          <li>When using <code>FCGeneric.DBObjectName</code> to set the object name of an FCGeneric compatibility object, not recommended, the bulk membership of that Generic wasn't getting set up properly. The Generic would not get queried or updated during bulk.UpdateAll or Query operations.</li>
          <li>Better compatibility when using <code>FCGeneric.DBObjectName</code> with a previously used Generic.</li>
        </ul>
        <li>FCGeneric's RowLimit and MaxRecords properties
          <ul>
            <li>Compatibility
              <CODE>FCGeneric.RowLimit</CODE> was not working properly (throwing errors when there should not be any error) against Oracle 7 and Oracle 8.0.x databases.</li>
            <li>Compatibility
              <CODE>FCGeneric.MaxRecords</CODE> is not supported on Oracle 7 and 8.0.x databases. Setting this property will not throw an error. A warning will be logged to the log file and the query will proceed as normal, returning all possible rows.</li>
            <li>Please see the [System Requirements](system-requirements.md) page and the updated documentation for the <code>FCGeneric</code> compatibility class for more information on the
              <CODE>MaxRecords</CODE> issue.</li>
          </ul>
        </li>
        <li>For FC.env files, application configuration settings will now override classic FC.env database parameters. The <a href="compat_configuration.html">Configuration Changes</a> document discusses this feature.</li>
        <li><code>GetState</code> and <code>GetCountry</code> methods were not throwing exceptions for invalid states or countries.</li>
    </ul>
    <li>AutoDestination
      <ul>
        <li>Rules with trailing whitespace could fail.</li>
      </ul>
    </li>
    <li>DataVerifier
      <ul>
        <li>The Daylight Hour verifier now properly checks for duplicate time zones.</li>
        <li>Added a new test to check for HGBST (User defined) lists which are not related properly to child shows/elements</li>
        <li>The Login form now respects the fact that the Database Name is not required for Oracle databases.</li>
        <li>Added better logging in general, and better trapping of unexpected errors thrown by the <b>FCFL.NET</b> and Compatibility verifiers</li>
        <li>Stored procedure requirements are no longer checked on Oracle pre-9 to match the requirements specified in the <b><!--DXMETADATA start type="Variable" name="ProductTitle" -->fcSDK<!--DXMETADATA end --></b> documentation.</li>
      </ul>
    </li>
</ul>
</p>
<p>Logging:
<ul>
  <li>Logging library (log4net) version updated to 1.2.9.</li>
  <li>The logging samples were updated to remove the c-style escape sequences (such as \t and \\) as they are no longer necessary.</li>
</ul>
</p>
<p>Installation:
<ul>
  <li>Web and Windows Forms demos were missing required assemblies.</li>
  <li>Sql Server Stored procedures were missing proper permission granting statements.</li>
</ul>
</p>
<h3>Version 1.2.1</h3>
<p>
Fixes and Additions:
<ul>
  <li>Core <b>FCFL.NET</b>:
    <ul>
      <li>
        <p><b>IMPORTANT CHANGE</b>: ObjID and Numbering Scheme value generation is now handled by two new custom First Choice stored procedures (fc_new_oid and fc_next_num_scheme). This makes objid and num_scheme generation consistent across all Clarify&trade; versions on all database platforms (except pre-9 Clarify&trade; instances running on Oracle&trade;, see note below). These stored procedures are now a requirement of installation for <b><!--DXMETADATA start type="Variable" name="ProductTitle" -->fcSDK<!--DXMETADATA end --></b>.
          <b><!--DXMETADATA start type="Variable" name="ProductTitle" -->fcSDK<!--DXMETADATA end --></b> will not operate properly without these stored procedures loaded into the database (all objid and num_scheme generation will fail). </p>
        <p><img src="warning.gif" /> <b>PLEASE REVIEW THE INSTALLATION GUIDE BEFORE INSTALLING THIS VERSION</b>. The install guide has been updated to reflect this and other new changes.
          <br/>
          <br/>
          <b>NOTE</b>: The fc_new_oid stored procedure is not required for versions of Clarify&trade; before 9 on Oracle&trade; databases.
      </li>
      <li>
        <b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): CacheManager.UpdateDataCache() and CacheManager.UpdateSchemaCache() have been replaced by CacheManager.UpdateCaches(CacheType). CacheType is a new enum with the following values: Data, Schema, All. If you wish to update a group of caches, call UpdateCache( CacheType.Data ) for example.
      </li>
      <li>
        <b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): Custom caches (subclasses of CacheBase) no longer have an IsSchemaCache property. It has been replaced by a CacheType property which returns a CacheType enum value signifying which type of cache is it.
      </li>
      <li>
        <b style="color:red;">BREAKING API CHANGE</b> (.NET APIs only, Compatibility unaffected): Oracle 7 support for the
        <CODE>ClarifyGeneric.MaximumRows</CODE> property has been limited to throwing an exception when the maximum number of rows in a query result is exceeded. All other supported databases automatically constrain the query to the MaximumRows limit. Please see the SDK documentation for more details.
      </li>
      <li>Fixed a race condition bug in GetNextNumScheme that occurred under very high stress conditions.</li>
      <li>
        <CODE>GenericDataRow:Unrelate()</CODE> : Fixed bug causing Unrelate to fail for Mandatory relations.</li>
      <li>
        <CODE>ClarifyBulk.Remove()</CODE> was not setting the generic's bulk to the session default bulk.</li>
      <li>Hierarchical Lists: Default elements for a list level could possibly be set to an InActive element if no Default element was present. Now, when no Default element is present the first Active element will be selected.</li>
      <li>
        <CODE>ClarifyGeneric.AppendFilter()</CODE> Fixed scenarios where AppendFilter would not work properly in concert with Filter property.</li>
      <li>FCGeneric and ClarifyGeneric weren't tolerating nullable database date fields. Calls to Fields-Get and Duplicate would throw an error if one of the date fields was DBNull.</li>
      <li>Fixed a bug that caused unnecessary error statements to be logged when there were rows in the fc_string table with an empty string or null in the \'name\' column.</li>
    </ul>
  </li>
  <li>Compatibility
    <ul>
      <li>Setting FCGeneric fields was not handling coercion of strings to non-integers types containing number formatting.
        <br/>For example setting strings like: "$1.23", "$2,032.41" to a decimal generic field now works.</li>
      <li>FCApplication.is_it_date_field did not process fields on views correctly. It now supports fields on views.</li>
      <li>Fixed an error related to setting the BulkName of a FCGeneric before calling TraverseFromRoot.</li>
      <li>error_handler will no longer invert the error_num parameter if the message starts with "WARNING"</li>
      <li>Session Portability: It is now possible to call
        <CODE>ClarifyApplication.GetSession( sessionID )</CODE> with a session Id that was created via Compatibility.</li>
    </ul>
    <li>AutoDestination
      <ul>
        <li>Fixed a bug with rules containing dates in constraints.</li>
        <li>SQL statements generated to resolve paths now uses parameter bindings for better performance.</li>
      </ul>
    </li>
    <li>Performance Counters
      <ul>
        <li>Performance counter functionality can now be disabled for individual applications. See the <a href="fcsdk_config_basic.html">Basic Configuration</a> guide for more information.</li>
        <li>Installer now prompts to set required performance counter permissions for all operating systems.</li>
      </ul>
    </li>
  </li>
  <li>Data Verifier now supports Oracle 7 and 8.0 databases.</li>
  <li>Data: SqlHelper now logs whether a query is considered "large" to allow filtering of large and small queries. Please see the new
    <a href="logging_sample_largesql.html">logging config sample documentation</a> which shows how to redirect logging output for large queries.</li>
</ul>
</p>
<p>Installation:
  <ul>
    <li>The Installation Guide is no longer present as a PDF. It is now embedded in the API Documentation.</li>
  </ul>
</p>
<h3>Version 1.2</h3>
<p>
  Fixes and Additions:
  <ul>
    <li>Windows Demo Installer:
      <ul>
        <li>Fixed the missing FChoice.Common.dll for the Console Demo.</li>
        <li>Added shortcuts to demo executables and the URL of the web demo.</li>
      </ul>
    </li>
    <li>AutoDestination:
      <ul>
        <li>MTM and OTM relation traversals are now fully supported. Where clauses can be appended to relation path items to constrain related rows. Example:
          <pre class="example">contract2site(name starts with "Joe"):cust_loc2act_entry(act_code = 8100):act_entry2user:login_name = "sa" -> "Email";</pre>
        </li>
        <li>Much work has been done to make the parsing of rules more robust.</li>
        <li>Multiword rule operators were not being parsed correctly. (starts with, ends with, earlier than, later than)</li>
      </ul>
      <li>Compatibility:
        <ul>
          <li>
            <CODE>FCSession.use_list</CODE> Fixed support for setting date fields to -999 or "-999" to represent the current date.</li>
          <li>FCApplication was requiring the db_name parameter in the FC.ENV even for Oracle. Added a property to DbProvider called "RequiresDbNameParameter" to allow utilities and FCFL.NET to determine whether a given provider (i.e. Oracle) needs the db_name parameter or not.</li>
        </ul>
      </li>
      <li>Logging :
        <ul>
          <li>LogManager now looks for the log config file in the AppDomain's BaseDirectory. Previously it was looking in the current working directory.</li>
          <li>Added more verbose logging to
            <CODE>SqlHelper.Execute&lt;x&gt;</CODE> methods.</li>
        </ul>
      </li>
      <li>Oracle : SchemaCache's schema queries for View Join Info records uses a CASE statement which isn't supported in Oracle 8.0.x or earlier this was thought to be only an Oracle 7 issue.</li>
      <li>Schema: Support for data type \'6\' was missing (char array)</li>
      <li>Foundation: ConfigItems in the database containing non-standard values for the data type would fail. Added a new
        <CODE>ConfigItemValueType</CODE> enumeration \'Unknown\' to represent these types and expose access to their value via the
        <CODE>ConfigItem.ValueTypeRaw</CODE> property.</li>
  </ul>
</p>
<h3>Version 1.1</h3>
<p>
  Fixes:
  <ul>
    <li>
      <CODE>ClarifyGeneric.Update()</CODE> of tables with change date fields in a certain order could throw an exception.</li>
    <li>Navigation of related rows was not possible when traversing OTM relations from a parent generic to a child generic of the same table.</li>
    <li>Users with encrypted passwords can now be used as the application user.</li>
    <li>Some default error messages were not being loaded properly.</li>
    <li>
      <CODE>SchemaCache.IsIntegerField</CODE> did not properly handle invalid fields on views (an proper exception was thrown, but with an incorrect error message).</li>
    <li>Data Restriction fixes.</li>
    <li>Compatibility : Incorrect datatype values returned by MockAdoField.DataType for Date and TinyInt types.</li>
    <li>Compatiblity:
      <CODE>MockAdoField</CODE> now supports -999 or "-999" when setting a datetime field to be the current time.</li>
    <li>Compatiblity: build_lists was not checking for null or empty field parameters.</li>
    <li>Auto Destination had an issue with multiple rule clauses having bad SQL queries</li>
    <li>Installer: corrected installer issues and added uninstall shortcuts.</li>
  </ul>
</p>
<h3>Version 1.0</h3>
<p>
  Initial Release
</p>
