# Data Restrictions

### Introduction

The **fcSDK** includes the Dovetail Data Restriction Technology. Dovetail Software has shipped a thick client product called "Data Restriction Tool," (RES). RES is a product that allows you to segregate your Clarify database so that different sets of users can use the same forms (and customizations) to see different sets of data in the database. This can include any Clarify items such as cases, sites, contacts, parts, etc.

For example, suppose you have two different groups that support different product lines. You might set up RES so that the users in group 1 can only see group 1's sites, contacts, solutions, cases, and parts. Likewise, group 2 would only see their data. For any of the users, they seem to be using base Clarify, but the data that comes up in the forms is based on their restriction group.

The problem with the thick client product is that it has to be implemented with a large number of small customizations on the various Clarify forms. It works well, but it is a very large and complex product.

RES had to be implemented the way it was because there is no other way to implement it (given Clarify's thick client implementation). Further, RES cannot use Clarify's Secure Query, as that technology is far too limited to be useful for a full data restriction.

**NOTE:** The thick-client version of RES is a separate product that you must purchase from Dovetail Software if you wish to use it.

### Restriction in The **fcSDK**

The **fcSDK** fully addresses these problems. Using a simple database-based scheme, **fcSDK** allows you to put restrictions on any database table or view. When you place these restrictions, they are entered once (in new database tables provided with this product).

This means that every time you perform a query or an update using the **fcSDK**, it determines if that table or view is restricted, and automatically modifies the SQL for you. This has one very profound consequence: No form customization is required to use restrictions.

Basically, if you enter restrictions (once) in the database, every time you use the **fcSDK**, you will automatically have data restriction working for you. This makes it simple, and easy to use.

**NOTE:** If you do not wish to use data restriction, do not import the data restriction tables into the schema. The **fcSDK** is smart enough to detect this. If you do this, you will not occur any additional RES overhead as you use the **fcSDK**.

**NOTE:** You must login to the **fcSDK** as a *user* to use data restriction. If you log in as a *contact*, data restriction is automatically turned off.

### Restriction Architecture

A restriction set is defined as a set of up to five levels of restriction for an object. The objects with restriction sets are commonly the following:

* employee
* site
* queue
* part number
* script
* action item (task)
* lead
* opportunity
* dialogue
* literature request
* solution

However, you can restrict any objects you want, in any way that you want. It should be noted that many objects in Clarify (such as case and contact), can be best restricted by using a common object (site in this situation). If you do not understand how to model your restrictions, please contact Dovetail Software.

An administrator starts by creating, using the supplied GUI, a set of restrictions that will be given to the users of Clarify. There can be as many restriction groups as desired, or only a few. It is solely dependent on how each administrator wishes to partition their data as to how restriction groups are set up. Setting up restriction groups well is the key to this product!! If you need help with setting up these groups, please contact Dovetail Software. The supplied Data Restriction GUIs are found in the fcAdmin module shipped with the **fcSDK**.

Most employees/users will be placed in just one restriction group. That is, the data they should be able to view and modify. But there are times (for examples, managers) where an employee may need to spend time working on different sets of data. In this case, they should be added to multipile restriction groups. But even when a user is placed in multiple groups, only one of those groups can be active at a time. The user can only view/modify data for one restriction group, and if they want to modify/view data from a different group, they have to switch the group they are in (via the provided GUI).

An administrator will assign the restriction group(s) for each user on the More Information page of the Employee form in Policies & Customers. The administrator can set the group(s) for the user, and the current (default) group for that user. For most users that will be just one group.

While only a small number of objects are restricted (see above), all of the objects in Clarify are essentially restricted – using the base restricted objects. For example, contacts are restricted based on the site(s) at which they are located. So even though the product does not place restriction fields on the contact (or case) objects directly, the end-user will still see those as a restricted object.

As mentioned before, RES works “under the covers.” So, a user who creates a new site will automatically give that site their current restrictions just as a part of creating that site. After that, the site will only be visible to people who have restrictions to see the site.

### RES and fcQuery

Data Restriction is also used within fcQuery. Each time a query is executed, the fcQuery application determines if that table or view is restricted, and automatically modifies the SQL for you. See the section title Manage fcQuery Objects later in this docuemtn for more information on fcQuery.

### A RES Example

Suppose you have two customer service representatives in your company; emp1, who takes care of customers for Joe's Clam Shack (JCS) and emp2, who takes care of customers for company Bubba's Bait Shop (BBS).

Now suppose that in your database, you want sites s1, s2, and s3 as customer sites for JCS , and sites s4, s5, and s6 as customer sites for BBS.

The administrator can set the first level restriction of emp1 to be JCS, and the first level restriction of emp2 to be BBS. When emp1 creates new sites s1, s2, s3, their level 1 restrictions will automatically be set to JCS (because a site gets the same restriction set as its creator). Likewise for sites s4, s5, s6 for emp2 and BBS.

Now when emp1 presses the Find Caller button on the new case screen he will only see contacts for sites s1, s2, s3. If emp2 performs the same operation, he will only see contacts from sites s4, s5, and s6.

Now you may have a manager (emp3) who wants to be able to switch back and forth, and see data from either emp1's or emp2's customers from time to time. The system administration can set up emp3's account so that he (emp3) has two restriction sets (one set has level 1 = JCS and the other set has level 1 = BBS) and can switch back and forth between them. Only one set can be active at any time.

It is also possible to break down the restriction sets into finer distinctions by using levels two and three of the restriction sets. Say you have another employee (emp4) who only deals with people from Joe's Clam Shack eastern region. His restriction set would look like level 1 = JCS, level 2 = East. You may have yet another employee, emp5, who deals with Joe's Clam Shack western region. His restriction set would be level 1 = JCS, level 2 = West. There might be a site s7 with restriction set JSC/East. emp4 has access to that site but no others. emp1 also would have access to site7 because he has access to any objects whose level 1 restriction is JCS.

### Administration Support

The administration of RES has traditionally been performed in the Clarify Classic Client. These traditional forms are now incorporated into the fcAdmin web application. For more information on these GUIs, please see the fcAdmin sections below.

If a user belongs to multiple restriction groups, you can use the FCSession method ChangeResGroup to change the current restriction group for that user.

### Restricting Your Database

The mechanism for modifying your restrictions is to modify the two restriction tables provided with this product. A sample restriction file is provided with this product. It can be modified, and imported (using dataex).

There are two fundemental operations that the **fcSDK** must perform for restriction to work. The first is that when new rows are added to restricted tables, the **fcSDK** must automatically add restrictions to that new row for you. For example, if the site table is restricted, you want the **fcSDK** to add the current user's restriction to each new site row added to the database.

This is accomplished with the “table_res_tbls” table. Each Clarify table that is to be restricted must have one row added to this table. In the “table_res_tbls” row you will enter the table name and number, as well as the names of the 1-5 restriction fields.

Dovetail Software recommends that you use our convention of “x_res1, x_res2…”, but you may choose your own.

For example, the following is a sample dataex object to restrict the site table:

```
OBJECT TYPE = "res_tbls", NAME = "site_tbl"
UNIQUE_FIELD = tbl_num
  FIELDS
    tbl_num = 52;
    tbl_name = "site";
    res1 = "x_res1";
    res2 = "x_res2";
    res3 = "x_res3";
    res4 = "x_res4";
    res5 = "x_res5";
  END_FIELDS
END_OBJECT NAME = "site_tbl"
```

**NOTE:** For each table you restrict, you MUST add the corresponding columns to the Clarify database table.  
**NOTE:** You can enter restrictions for tables (such as the one above) either in the fcAdmin GUI, or with DataEx (or Dovetail's DIET product).

The other operation that the **fcSDK** res-enables is querying. For each table or view (you often will data-restrict your views), you will enter one or more rows to the “table_res_sql_clause” table. Again, a sample file is provided, and you must edit it and import it with data exchange.

Each row in this table refers to one “where” clause that will be added to the SQL statement every time you query that table or view. Each of these clauses will be “Anded” to whatever SQL the user generates via their FCGeneric object.

You must use valid SQL syntax. For example, if you wanted all site_view queries to only show sites in states that start with 'New', you could add a clause such as “state like 'New%'”.

The table only has four columns: table name, table number, field name, and the SQL clause. In addition to using any of the columns of the table, you may use five special reserved words to represent the user's current restriction levels. They are (with pipes surrounding them), “|RESTRICTION1|, |RESTRICTION2|…”. When the **fcSDK** sees one of these keywords, it substitutes the current user's restriction level for the keyword. If the user doesn't have a particular restriction level (it is empty), the **fcSDK** will not add the clause for you.

The field name (fld_name) is optional and simply provides a cue, for optimization purposes, to the **fcSDK** about what fieldname is involved in the replacement done within the clause.

For example, suppose that Joe is in a restriction group that only has two levels of restriction, and we only want to restrict for him queries on the site table.

```
OBJECT TYPE = "res_sql_clause", NAME = "site_clause1"
  FIELDS
    tbl_num = 52;
    tbl_name = "site";
    fld_name = "x_res1";
    clause = "x_res1 = |RESTRICTION1|";
  END_FIELDS
END_OBJECT NAME = "site_clause1"

OBJECT TYPE = "res_sql_clause", NAME = "site_clause2"
  FIELDS
    tbl_num = 52;
    tbl_name = "site";
    fld_name = "x_res2";
    clause = "x_res2 = |RESTRICTION2|";
  END_FIELDS
END_OBJECT NAME = "site_clause2"
```

The above rows tell the **fcSDK** that any query on the site table should add 1st and 2nd level restriction clauses, assuming that the user is currently in a restriction group.

To best use the **fcSDK** and RES, you would add rows to the res_sql_clause table for any and all tables and views that your application queries for data.

**NOTE:** Neither the SqlHelper nor the FCSqlExec compatibility objects are RES-enabled. These objects are used for direct queries to the database without any business logic or Clarify semantics.  
**NOTE:** For more information about RES, please request the RES end-user document (for the thick client product) from Dovetail Software.
