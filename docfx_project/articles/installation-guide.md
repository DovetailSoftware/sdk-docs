# **fcSDK** Installation Guide

## Requirements

The **fcSDK** environment requirements can be found in the section titled 'fcSDK Environment Requirements'.

## Packaging

The **fcSDK** ships as a single ZIP file, containing the installation package for the **fcSDK** itself as well as a separate compiled help module (CHM) documentation file in which this installation guide exists.

## Upgrading from FCFL/COM

FCFL/COM and the **fcSDK** can run side-by-side on the same computer. Each can be configured to run against the same or different Clarify&trade; database instances without issue. The **fcSDK** requires a few schema modifications in addition to those required by the FCFL/COM installation. Please read the [Schema Modification](#schema-modification) section later in this document for more information on what these extra requirements are.

## Installing the **fcSDK** using the Installation Package

**NOTE:** The **fcSDK** installer requires a user with Administrative privileges on the local machine to execute the installation. Please ensure that you are logged on as a user with such privileges before starting.

Start the installation process of the **fcSDK** by extracting the contents of the ZIP file to a temporary directory on the machine on which the **fcSDK** is to be installed. Start the installation by double-clicking on the **fcsdk.exe** file. The installer wizard will start and will take you through the following steps:

1. Welcome Screen
1. Choose Setup Type - Select from *Typical* or *Developer* installations. You may also select *Custom* to control in detail what features are installed and what location they are installed. By default software is installed to *C:\Program Files\Dovetail Software\fcSDK*.
		When selecting a Custom setup type you will be presented with a treeview containing the available features of the installer. Here is a brief summary of each feature.
	* Typical
	  * fcSDK Documentation - The documentation you are currently reading.
		* Data Verifier - Verifies **fcSDK** installation and integrity of data in your Clarify database.
		* fcSDK Support Utilities
			* License Installer - For installing Dovetail Software licenses.
			* Configuration Protector - Assists will creating encrypted application configurations.
			* Configuration Editor - Edits application configurations for database connection settings.
	* Developer
		* VS.NET Support - Adds Dovetail assemblies to the .Net tab in Visual Studio
1. Confirmation - This step confirms that you are ready to begin the actual install procedure of the **fcSDK** on this computer.
1. Ready to Install - When all information has been collected you will see this step. Clicking Next will begin the install process.
1. Installation Progress - As the installer copies files and performs other actions on the computer, you will see the progress bar showing the percentage complete for the current task or overall installation.
1. Installation Complete - This step confirms that the installation was successful. You can safely click the Finish button to exit the installer. To perform a spot-check confirmation that the install performed its tasks correctly, open the Start Menu and browse to All Programs -> Dovetail Software -> **fcSDK**. There should be several shortcuts to various utilities, the documentation, etc.

## Special Information About Performance Counters Security Settings

The **fcSDK** exposes performance counters that can be monitored using the Windows Performance Monitor utility (perfmon). In order for the **fcSDK** to connect to its performance counters and be able to update their values, certain permissions are required to access a few registry keys.

Normal Windows users have this privilege and no special permissions are required. However, if the **fcSDK** is to be run from a low-privileged app (such as a Windows Service running as the NETWORK SERVICE user or as an ASP/ASP.NET web application like Dovetail's Agent software, it will require extra permissions for these users on specific keys.

Important: To make the performance counters available the **fcSDK** installer sets the following registry keys to be read accessible to **Everyone**.

* HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PerfLib : Read Access
* HKLM\SYSTEM\CurrentControlSet\Services\FChoice.Common : Read Access

It is easiest to use the **Everyone** user when setting these permissions since there is little security threat posed by these registry keys. However, if you do not wish to use the Everyone use and wish to use specific users, please see below for specific information about which user(s) are required.

Which user(s) require the permissions mentioned above depends on the application. If you have a custom applications, the application developers should know which user or users require the permissions. For Dovetail products, see below:

* SEC.NET and other similar Windows Service software: NETWORK SERVICE (Windows XP, Windows 2003 Server only), otherwise, whatever user the service is configured to run as. For more information on how to configure SEC.NET or other software, please contact Dovetail Software.
* fcClient: IUSR_MACHINENAME and IWAM_MACHINENAME

**NOTE:** It is possible to disable the performance counter functionality in the **fcSDK** and thus avoid the need for special permissions. For more information, please see the section titled [Basic **fcSDK** Configuration](basic-configuration.md).

## The **fcSDK** Installation Tree

The paths mentioned below are relative to the installation path specified when using the installer. By default, this path is *C:\Program Files\Dovetail Software\fcSDK*. The following directories are created under the installation root:

| Directory Name | Purpose |
|:--- |:--- |
bin | All the binaries and assemblies for the **fcSDK** product.
docs | User and developer documentation
files | Support files such as data import files
icons | Icons used for the Start Menu shortcuts and applications
samples | Sample scripts, configuration files, and other files
schema | Schema file(s) for installing required and optional schema changes for the **fcSDK**
sprocs | SQL scripts used for installing stored procedures required by the **fcSDK**

## Post-Installation Tasks

### Schema Modification

The **fcSDK** requires certain schema modifications and can benefit from certain optional modifications.

In order to modify the schema of your Clarify&trade; database, you must have Dovetail SchemaEditor or the correct database administration tools for your specific Clarify&trade; version and database platform. Files needed for Schema Modification are in the schema folder located in the **fcSDK** installation directory.

### Using Dovetail SchemaEditor for Schema Modifications

To make the required schema changes using Dovetail SchemaEditor, perform the following steps:

* If this is your first time using SchemaEditor you need to generate a .SchemaEditor file - *SchemaEditor -g*

1. Edit the Default.SchemaEditor file
	* Set the database connection information in the Default.SchemaEditor file
	* Set the inputFilePath element in the Default.SchemaEditor file to **fcSDK_schemascript**.xml
1. Preview the changes - *SchemaEditor.exe -p*
1. Apply the changes - *SchemaEditor.exe -a*

If desired repeat steps 1 thru 3 for the following optional schema script files.

* fcSDK_data_restrictions_schemascript.xml - Adds Data Restriction
* fcSDK_i18n_lists.schemascript.xml - Adds support for localized GBST and HGBST (customer and user-defined pop-up lists)

### Using DDEditor for Schema Modifications

To make the required and optional schema changes using Clarify's DD Editor, follow these steps:

1. Start the DD Editor program.
1. Use the "Save" or "Export Schema" functionality (this varies from version to version of DD Editor) to save a copy of the database to disk.
1. Open the newly saved schema file in a text editor as well as the fcflnet_schema.sch file mentioned above and manually merge the required changes and any optional changes you decide to incorporate. See DDEditor Schema Changes Details below for the required changes for each installation type.
1. Use the DD Editor program to apply the schema changes (the details of how this is done varies from version to version of DD Editor)
1. Exit DD Editor.

Below are the required and optional schema changes for the two modes of installation: Upgrade from FCFL/COM or Fresh Install of the **fcSDK**.

### Using Amdocs Schema Manager for Schema Modifications

To make the required and optional schema changes using Amdocs Schema Manager, follow these steps:

1. Use Schema Manager to export your schema file from the database. Use the -schema schema.xml parameter to dump the schema to a file.
1. Edit your schema file, incorporating the required changes (and any optional changes you decide to) from the **fcSDK_schema6**.sch file. See Schema Changes for more details.
1. Use Schema Manager to apply the schema changes to your database. Use the -modify schema.xml parameter to apply the changes.
1. Refer to your Amdocs documentation for more details on using Schema Manager.

### Schema Changes

#### Required:

* Add "site_status" field to the "rol_contct" view
* Add "work_group" field to the "empl_user" view
* Add table "fc_licensing"
* Add table "fc_licensegrace"

#### Optional:

* Add the "fc_string" table

#### For Data Restriction functionality:

* Add "user2restriction" and "curr_user2restriction" relations to table "user"
* Add table "res_tbls"
* Add table "res_sql_clause"
* Add table "restriction"

#### For localized GBST and HGBST (custom and user-defined pop-up list) lists

* Add relation to "hgbst_elm" table
* Add relation to "gbst_elm" table
* Add "fc_loc_elm" table

## Install Required Stored Procedures

### *MSSQL Database*

Open Query Analyzer and connect to your Clarify database as a user with database administrator privileges. Select the correct database from the database drop-down list. Next, open the file called "mssql_sprocs.sql" in the \'sprocs\' folder in the **fcSDK** installation directory and execute it. When the execution is finished, the results window in Query Analyzer should say:

```
The command(s) completed successfully.
```

Alternatively, the "isql" command-line utility can be used to execute the creation of the stored procedures. Ensure that the MSSQL installation "binn" directory is in your system PATH environment variable by typing "isql /?" at the command prompt. You should see the usage help text for the isql command. If you get an error, please add the "binn" (note the extra 'n') folder in your MSSQL installation directory to your PATH environment variable. From a command-line, change directory to the **fcSDK** installation path and then again to the \'sql\' folder.

Next, execute the following command-line syntax, replacing the &lt;xxxxx&gt; tokens as appropriate:

```
isql -S <server> -d <dbname> -U <username> -P <password> -i mssql_sprocs.sql
```

| Token | Description |
|:--- |:--- |
| &lt;server&gt; | MSSQL server/host name (i.e. DB1, DBSVR1, etc) |
| &lt;dbname&gt; | Database name on the SQL server instance (i.e. cl12, clarify, etc) |
| &lt;username&gt; | SQL Authentication username (i.e. sa) |
| &lt;password&gt; | SQL Authentication password |

If no errors are returned, the stored procedure was created successfully. The result output should look similar to this:

```
1> 2> 3> 4> 5> 6> 7> 8> 9> 10> 11> 12> 13> 14> 15> 16> 17> 18> 19> 20> 21> 22> 23> 24> 25> 26> 27> 28> 29> 1> 2> 3> 4> 5> 6> 7> 1> 2> 1> 2> 3> 4> 5> 6> 7> 8> 1> 2> 1> 2> 1>
```

### *ORACLE Database*

Compile and install the special Oracle stored procedures defined in the "oracle_sprocs.sql" file located in the \'sprocs\' folder underneath the **fcSDK** installation path.

**NOTE:** There are two different Oracle stored procedure files: *oracle_sprocs_pre9.sql* and *oracle_sprocs_post9.sql*. The "pre9" file is for Oracle databases running Clarify versions earlier than v9 (**NOT** the Oracle version, just the Clarify version). The "post9" file is for Oracle databases running Clarify versions 9 or above. Please select the correct file for the example below.

From a command-line, change directory to the \'sql\' folder. Execute sqlplus with the following syntax, replacing the &lt;xxxxx&gt; tokens as appropriate:

**Clarify versions earlier than 9:**

```
sqlplus <user>/<pass>@<sid> @oracle_sprocs_pre9.sql
```
  -OR-

**Clarify versions later than 9:**

```
sqlplus <user>/<pass>@<sid> @oracle_sprocs_post9.sql
```

| Token | Description |
|:--- |:--- |
| &lt;user&gt; | Username of a user with DBA/admin privileges on this database |
| &lt;pass&gt; | Password for the user |
| &lt;sid&gt; | ORACLE database instance SID |

A series of output statements from SQL*Plus will be displayed to the console listing successful compilations and creations or errors. If there were no errors, the stored procedures were created successfully. The output from a successful installation will look similar to this example:

```
SQL*Plus: Release 9.2.0.1.0 - Production on Wed Mar 9 17:46:52 2005

Copyright (c) 1982, 2002, Oracle Corporation.  All rights reserved.

Connected to:
Oracle9i Enterprise Edition Release 9.2.0.1.0 - Production
With the Partitioning, OLAP and Oracle Data Mining options
JServer Release 9.2.0.1.0 - Production

Procedure created.

No errors.

Procedure created.

No errors.

Grant succeeded.

PL/SQL procedure successfully completed.

Synonym created.

Grant succeeded.

PL/SQL procedure successfully completed.

Synonym created.

Disconnected from Oracle9i Enterprise Edition Release 9.2.0.1.0 - Production
With the Partitioning, OLAP and Oracle Data Mining options
JServer Release 9.2.0.1.0 - Production
```

### Set Server Time Zone

It is important to make sure you have the time zone of your Clarify instance set correctly. To verify and correct this setting you simply need to connect to your Clarify database using your favorite database query utility and execute the following query.

```
select * from table_time_zone where is_default = 1
```

If the *full_name* field returns a value of **No Time Zone Specified** or has a time zone specified that is incorrect you can correct the issue by setting the *is_default* field of the appropriate row to **1**.

```
update table_time_zone SET is_default = 0
update table_time_zone SET is_default = 1 WHERE name = {Your Database Server's timezone}\'
```

### Optional Installation Steps

If you wish to customize or localize the **fcSDK**'s error messages, you may wish to import the "fcerrors.dat" file. This file is located in the "files" directory underneath the **fcSDK** installation path. Once imported, the errors for the default (EN_US) locale can be customized, or copied to another locale and translated. 

If you wish to use **fcSDK**'s remote session feature please follow the guide on [Configuring Remote Sessions](remote-sessions.md). 

### License Installation

For information on how to use the FC License Installer to install your **fcSDK** and other licenses, please see the section titled "Overview of the **fcSDK** License Installer" 

### Running the Data Verifier

Data Verifier is a utility that can be run against a Clarify database to ensure that there are no inconsistencies or bad data that might prevent the **fcSDK** from initializing properly.

After installing the **fcSDK** and applying the necessary schema changes, it is recommended that you run Data Verifier to confirm the installation was successful.

To learn how to run and use the Data Verifier, please see the section titled [Overview of **fcSDK** Data Verifier](data-verifier.md).

### Review SDK Documentation

After installation, the next step to getting started with the **fcSDK** is to review the SDK documentation in this document. A good place to start is the [Introduction Section]().

The SDK documentation includes information on getting started programming with the **fcSDK**, working with the same applications, limitations and known issues, API reference, and specifics on many of the features included with the **fcSDK**.
