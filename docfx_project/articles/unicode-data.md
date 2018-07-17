# Enabling Storage of Unicode Data

## Introduction to Unicode and the fcSDK

The **fcSDK** is fully Unicode-ready. Fields in your database can be flagged as Unicode fields and the **fcSDK** will process data in these columns correctly. Having Unicode-enabled columns adds several important features to your application, such as:

* Displaying forms/pages/messages in each user's native language.
* Allowing users to enter data in key fields (such as log fields, or name/address fields) in the specific language that is appropriate.
* Displaying unicode data on web pages

Once configured, having Unicode-enabled columns could allow a user in France to see a “french” version of your web pages (including labels, lists, messages, etc), and enter log data in French. Another user, in Japan, can use Kanjii, a user in Germany can do the same in German, and a user in Israel can do the same in Hebrew (Unicode supports double-byte and/or right-to-left languages as well). They can do this at the same time against the same database. This can be a very powerful feature, and very useful to your users.

Unicode is not a one-shot solution, however. There are many complex issues involved in a Unicode-enabled system, and enabling the system is not appropriate for every customer. Below is a short list of some of the short-comings of such a system:

* Unicode fields are a bit slower than non-Unicode ones. You should only add this functionality to fields that need it. A shotgun approach is not necessarily best
* Most Clarify applications, including the thick client, are not currently Unicode-enabled. Thus, if you enter a note log (for example) in Kanjii, it will show up as question marks in the thick client
* Not all of your users will be able to read the data entered by other users. Remember that Unicode is not a translation service. What the customers enter is what is stored in the database, and later displayed to others as it was entered.

Thus, it is important to carefully decide what data should be Unicode-enabled, and which should not be. For help on this, please feel free to contact Dovetail Software.

**NOTE:** It is very important to realize that Unicode is completely optional. There is no requirement to use this feature. We recommend that you use it only if you need it, and sparingly.

## Configuring the Database for Unicode Columns

The following sections detail the steps you must follow to install Unicode support on your database. It is crucial that you read and understand all of the sections, and follow each of the steps listed.

### Set Up a Test Database 

Since this is a major change to an existing database, Dovetail highly recommends you make a backup of your current database and create a seperate test database on a seperate server if possible. All changes should be practiced on this test database before making another backup of and applying the changes to the production database.

### Verifying Your Database Server 

Before you can perform any of the steps below you must verify that your database server will allow storing Unicode characters. You must check the codepage/character set of your database server. The process for this is different with different database systems, and even different versions of the same DB system. You must insure that the database can handle a Unicode "code page". This is usually UTF-8.

Please see the documentation for your database server for more details.

### Add Unicode Flag Column to ADP Schema 

Before you can change any fields to be Unicode fields, you must first set the database up to be an **fcSDK** Unicode-enabled database. This is very easy to do, and is performed as follows:

* You must execute two SQL statement to add a new column to the *adp_sch_info* table (and initialize it). The **fcSDK** uses the existence of this column to determine if the database is Unicode-enabled, or not. If the column is not added then the **fcSDK** will not perform Unicode processing. Dovetail Software chose to add this new adp column to allow you the flexibility to have only certain columns be unicode strings. There is simply no reason (as Clarify does with Version 11.1+) to make all of the strings in your database be Unicode.
* Execute the following SQL statements against the current database (test or production depending upon how far along in the process you are): 

```
alter table adp_sch_info add fc_flags int

-and- 

update adp_sch_info set fc_flags = 0
```

**NOTES:**

* These statements will work against both Microsoft™ SQL Server and Oracle™.
* Adding this column will NOT affect the functioning of base Clarify in any way. The column will be ignored by all Clarify applications.
* As of version 11.1, Clarify offers you the option of creating a "Unicode" database. Even if you take that option you must still execute the above statements.

### Convert Specific Columns 

Now that the database itself is enabled for Unicode processing you must convert individual columns to support Unicode data. For each column to be converted, you must perform the following two steps:

* Alter the column definition in the database [see NOTE]
* Mark it as a Unicode column in adp_sch_info
		
**NOTE:** As of Clarify version 11.1, you can create a database (with the makedb utility) to be a "Unicode" database. If you follow this process, all of your string fields will be Unicode fields. The **fcSDK** has been designed to work with this type of database. If you have built your database in this manner, you do not have to do the first step above for each unicode field. However, the second step is still required.

**Step 1:** *Altering the column definition*

For each string column that you wish to make a Unicode field, you must execute the following SQL statement:

* For SQL Server:

`alter table table_xxxx alter column yyyy nvarchar(length)`

* For Oracle:

`alter table table_xxxx modify yyyy nvarchar2(length)`

where:

* table_xxxx	Is the name of the table
* yyyy	Is the name of the column to modify
* length	Is the original length of the column

For example, suppopse that you wish to convert the table_contact first_name and last_name fields to be Unicode enabled. You would enter the following statements to alter the column definitions:

* For SQL Server:

`alter table table_contact alter column first_name nvarchar(30)`
`alter table table_contact alter column last_name nvarchar(30)`

* For Oracle:

`alter table table_contact modify first_name nvarchar2(30)`
`alter table table_contact modify last_name nvarchar2(30)`

**NOTE:** Even though the columns will be bigger to handle the Unicode data you do not change the size of the column definition – the database will handle that for you. The column still holds only 30 characters of data, even though some of them may take multiple bytes for the database to store.

**NOTE:** Long varchar columns (text columns, in Clarify parlance), are a bit trickier to modify. You may not use an alter statement with them. To modify those columns you must perform the following steps:

* Create a temporary table with the same column definitions as the original table, except that the data type for the text columns is now an “ntext” data type. Make sure that indexes are defined for the new table as well
* With SQL, copy all of the data from the old table to the new table
* Delete the old table
* Rename the new table to the name of the old table
* (For Oracle only). Make sure that the public synonyms are correct

**Step 2:** *Mark as a Unicode Column*

Once you have converted the column in the database it is very easy to mark a given column as a Unicode column. Perform the following SQL for each column you are converting:

```
update adp_sch_info set fc_flags = 1 where field_name = 'yyyy' 
and type_id = (select type_id from adp_tbl_name_map where type_name = 'xxxx')
```

Where:

* yyyy	is the column name
* xxxx	is the table name (without the "table_" prefix)

### Test Specific Columns 

Test your new columns to insure that they handle Unicode data. For a sample of how to do this, please see the strings.asp and grid_string.asp pages included with the **fcSDK**.

Also, make sure that your machine is capable of entering and displaying the Unicode characters you wish to display. For Windows users, please see the Regional Sections/Regional Keyborards help items for more details.

## Using Your Unicode-enabled **fcSDK** Database

The **fcSDK** can support Unicode data transparently. No code changes are necessary to enable the **fcSDK** to work with Unicode data.

There are other considerations to take when working with Unicode data within your application:

* If you are writing ASP web pages that will include Unicode characters, it is recommended that you properly code the pages to handle Unicode. For example, in the ASP pages that Dovetail Software ships, the following is the first line of each web page (to insure that it is using the proper codepage):

`<%@ Language="JavaScript" codepage=65001 %>`

The following tag is included right after the <title> tag to insure that the proper character set is used:

`<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">`

* If you are writing web pages using the Microsoft ASP.NET Framework, you should include the following parameters in your "@ Page" directive at the top of the ASPX pages:

`<%@ Page	... CodePage="65001" ResponseEncoding="utf-8" %>`

* If you are using a programming language that does not properly support Unicode (such as ClearBasic) to access the **fcSDK** Compatibility Layer, then it does not matter what you do with the **fcSDK** – the characters will not display properly.

**NOTE:** All .NET languages (such as C# and Visual Basic.NET) use the .NET Framework which is Unicode-enabled throughout. This problem is only a concern when using the Compatibility Layer with legacy programming environments.
