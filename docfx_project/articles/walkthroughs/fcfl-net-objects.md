# Developer Walkthrough - Fundamental FCFL.NET Objects

This walkthrough will cover four of the fundamental objects in FCFL.NET:

* [ClarifyApplication]() - Only one instance is present per application.
* [ClarifySession]() - Represents a user's connection to the database.
* [ClarifyGeneric]() - Workhorse object for doing data retrieval, insertion and modification.
* [ClarifyDataSet]() - Allows grouping ClarifyGeneric object database operations.

## Clarify Application

The [ClarifyApplication]() object instance represents an application that will connect to the Clarify database. ClarifyApplication is a [Singleton](http://en.wikipedia.org/wiki/Singleton_pattern) and only one instance is ever in the runtime. After having been initialized (see below), the Singleton instance of ClarifyApplication can be accessed using the [Instance]() static (**Shared** in Visual Basic) property.

### Initializing the Application Object

Before you can call any **FCFL.NET** methods the application object needs to be initialized. This is done using the [Initialize]() method. The Initialize method readies the ClarifyApplication instance by performing actions such as:

* Loading application configuration
* Caching schema and application data
* Validating licenses

#### Basic Initialization

For [Initialize]() to work correctly you must have your [configuration file]() set up with the minimum required [application configuration settings](). Please see the [Generic Example]() below to view a basic Initialization in action.

#### Manual Configuration Initialization

If, for some reason, you cannot or do not wish to use a configuration file for configuration -- if you need to select application settings at runtime, for example -- the application can be "manually" initialized using a NameValueCollection populated with [configuration settings]().

#### *Manual Initialization*

[C#] 
```csharp
// Create and populate configuration collection
NameValueCollection config = new NameValueCollection();
config.Add( "fchoice.dbtype", "MSSQL");
config.Add( "fchoice.connectionstring", "Data Source=.;Initial Catalog=clarify; User Id=sa; Password=sa;" );
config.Add( "fchoice.sessionpasswordrequired", "false");

// Create and manually initialize the ClarifyApplication instance
ClarifyApplication app = ClarifyApplication.Initialize( config );
```

[Visual Basic] 
```vbnet
' Create and populate configuration collection
Dim config As New NameValueCollection
config.Add( "fchoice.dbtype", "MSSQL");
config.Add( "fchoice.connectionstring", "Data Source=.;Initial Catalog=clarify; User Id=sa; Password=sa;");
config.Add( "fchoice.sessionpasswordrequired", "false");

' Create and manually initialize the ClarifyApplication instance
ClarifyApplication app = ClarifyApplication.Initialize( config );
```

### Clarify Session 

The [ClarifySession]() object represents a single user's connection to the database. All session operations or objects created from the session do so as the session user. The session can also be used as storage similar to ASP or ASP.NET's Session object. ClarifySession objects are created using the [CreateSession]() method on ClarifyApplication.

In a single session application, such as a Windows Forms application, you would initialize the application object and create a single session object for use throughout your application.

In a multi-session application, such as a web application, the application object would be initialized at a global level with one session object being created per user.

#### Sessions in a Web Environment

In a web application, creating and destroying session objects for each request is expensive. [CreateSession]() avoids this by caching the session's data for you at the application level.

The session object exposes a [SessionID]() property for you to use to uniquely identify the session and to later retrieve it. The SessionID can be saved in the web application's session object or as a cookie in the browser. When the web page loads the application will retrieve the SessionID and pass it to the [CreateSession]() method to retrieve a reference to the already-existing ClarifySession object instance.

When the web user's session ends [CloseSession]() should be called to remove the session from the application.

### Clarify Generic 

The [ClarifyGeneric]() object provides functionality to retrieve, update and insert data against a Clarify instance -- respecting the special requirements imposed by the Clarify system and thick client. Each generic object represents a single table or view in the Clarify database. Generics are created using the [CreateGeneric]() method on a [ClarifyDataSet]() instance.

The normal lifecycle of a generic is:

* Generic creation
* [Append filters]() or [sort order]()
* [Query]() data
* View and/or modify the [rows]() returned by the query
* [Add new rows]() to the generic

See the [Generic Example]() below to see a basic sample of data retrieval using a generic.

#### Generic DataRows

Generics are representations of database tables or views. As database tables or views contain rows of data so do generics. A generic has a [Rows]() property that exposes a collection of [ClarifyDataRow]() objects.

When executing a query, a generic object builds and executes a SQL query and places the results in the [Rows]() collection. This collection can be enumerated (using for each in C# or For Each in Visual Basic), or [indexed directly by row number]().

Index the row [by fieldname]() to access or modify data for a field within the row.

To add a row to the generic and schedule it for insertion into the database, call the [AddNew]() method.

#### *Accessing Generic DataRows*

[C#] 
```csharp
//First, create the dataset which will contain the generics
ClarifyDataSet dataSet = new ClarifyDataSet(session);

//create an address generic and add a row to it
ClarifyGeneric gAddress = dataSet.CreateGeneric("address");

//add a new address and commit it using Update()
ClarifyDataRow row = gAddress.AddNew();
row["address"] = "8900 Business Park Drive";
row["city"] = "Austin";
row["state"] = "TX";
row.Update();

//on purpose we forgot to add the zip code

//now we query for all rows with the same address (there will be at least one)
gAddress.AppendFilter("address", StringOps.Equals, "8900 Business Park Drive");
gAddress.Query();

//get a reference to the first row in the address generic
row = gAddress[0];

//you can also get a reference to the same row via the Rows collection
row = gAddress.Rows[0];

//update rows by iterating through the Rows collection
foreach(ClarifyDataRow addressRow in gAddress.Rows)
{
    addressRow["zipcode"] = "78759";
}

gAddress.UpdateAll();
```

[Visual Basic]
```vbnet
'First, create the dataset which will contain the generics
Dim dataSet As New ClarifyDataSet(session)

'create an address generic and add a row to it
Dim gAddress As ClarifyGeneric = dataSet.CreateGeneric(quot;address")

Dim row As ClarifyDataRow

'add a new address and commit it using Update()
row = gAddress.AddNew()
row("address") = "8900 Business Park Drive"
row("city") = "Austin"
row("state") = "TX"
row.Update()

'on purpose we forgot to add the zip code

'now we query for all rows with the same address (there will be at least one) 
gAddress.AppendFilter("address", FChoice.Foundation.StringOps.Equals, "8900 Business Park Drive")
gAddress.Query()

'get a reference to the first row in the address generic
row = gAddress(0)

'you can also get a reference to the same row via the Rows collection
row = gAddress.Rows(0)

'update rows by iterating through the Rows collection
For Each row In gAddress.Rows
    row("zipcode") = "78759"
Next

gAddress.UpdateAll()
```

#### Generic Hierarchies

It is often the case that you will want to query a table (for example, the case table), and then find some related rows in another table. These related tables are called child generics. The set of generics related to each other are a generic hierarchy. Generics engaged in a hierarchy have slightly different behavior than standalone generics.

**NOTE:** The concepts of "child" and "parent", when referring to generics, is not necessarily the same as the natural "child" and "parent" concepts in terms of the database. For example, one might think of an OTM relation as a "parent"->"children" relationship where the "O" is the parent. Generics can be linked OTM or MTO. The concept of a "parent" generic or "child" generic doesn't refer to the relationship cardinality, it refers to which generic traversed from which and in what order they will be processed during a Query or Update operation.

* Child generics are created via [Traverse](), [TraverseFromParent](), or [TraverseFromRoot]()
* It is possible for a generic to be both a parent generic and have child generics related to it, thus creating a generic hierarchy.
* [Querying]() a generic in a hierarchy actually queries the top most parent generic in the hierarchy, which in turn populates all the generics in the hierarchy. You only need to call [Query]() once on the hierarchy.
* After the Generic Hierarchy is populated, it is easy to navigate to the related child or parent generic's rows using [ClarifyDataRow.RelatedRows]().

The following example shows how to relate a case generic to a site and iterate through their rows.

#### *Traversing Related Generics*

[C#] 
```csharp
//First, create the dataset which will contain the generics
ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Create the 'case' generic and traverse to site
ClarifyGeneric gCase = dataSet.CreateGeneric("case");
ClarifyGeneric gSite = gCase.Traverse("case_reporter2site");
gCase.Query();

// Iterate through each case and emit the related site
foreach( ClarifyDataRow caseRow in gCase.Rows )
{
  System.Console.WriteLine("Case Title: " + caseRow["title"]);

  foreach( ClarifyDataRow siteRow in caseRow.RelatedRows(gSite) )
  {
    System.Console.WriteLine("Site: " + siteRow["name"]);
  }
}
```

[Visual Basic] 
```vbnet
//First, create the dataset which will contain the generics
Dim dataSet As New ClarifyDataSet(session)

' Create the 'case' generic and traverse to site
Dim gCase As ClarifyGeneric = dataSet.CreateGeneric("case")
Dim gSite As ClarifyGeneric = gCase.Traverse("case_reporter2site")
gCase.Query()

' Iterate through each case and emit the related site
For Each caseRow As ClarifyDataRow In gCase.Rows

  System.Console.WriteLine("Case Title: " + caseRow("title"))
  For Each siteRow As ClarifyDataRow In caseRow.RelatedRows(gSite)

    System.Console.WriteLine("Site: " + siteRow("name"))

  Next
Next
```

### *Generic Example:*

The following is a basic working **fcSDK** application. It does the following:

* Initializes the ClarifyApplication
* Creates a ClarifySession
* Retrieves the data

[C#] 
```csharp
// using FChoice.Foundation.Clarify

// Initialize the ClarifyApplication instance
ClarifyApplication app = ClarifyApplication.Initialize();

// Create a session
ClarifySession session = app.CreateSession("sa", "sa", ClarifyLoginType.User);

// Create the dataset which will contain the generics
ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Now view all the case objids in the system
ClarifyGeneric gCase = dataSet.CreateGeneric("case");
gCase.Query();

foreach( ClarifyDataRow row in gCase.Rows )
{
    System.Console.WriteLine( gCase.UniqueId.ToString() );
}
```

[Visual Basic] 
```vbnet
// using FChoice.Foundation.Clarify

' Initialize the ClarifyApplication instance
Dim app As ClarifyApplication = ClarifyApplication.Initialize()

' Create a session using a different time zone
Dim session As ClarifySession = app.CreateSession( "sa", "sa", ClarifyLoginType.User)

// Create the dataset which will contain the generics
Dim dataSet As New ClarifyDataSet(session)

' Now use fcSDK as normal
Dim gCase As ClarifyGeneric = dataSet.CreateGeneric("case")
gCase.Query()

For Each row As ClarifyDataRow In gCase.Rows 
    System.Console.WriteLine( row.UniqueID.ToString() ) 
Next
```

### Clarify DataSet 

[ClarifyDataSet]() objects are responsible for storing the data of as well as producing generics. Also, ClarifyDataSet provides methods which allow a group of ClarifyGenerics to be [Queried]() or [Updated]() at the same time within the same database transaction. ClarifyDataSets can be created by using the new operator and passing an instance of a [ClarifySession]() to the constructor.

#### Convenience and Integrity

It is often necessary to do multiple operations on a set of generics at the same time for convenience and database integrity.

For example, when querying three unrelated tables you would normally have to call Query on each generic. ClarifyDataSet provides the convenient [Query]() method which can take a list of ClarifyGenerics to query as a transaction.

Maintaining application integrity when updating the database is paramount when inserting or updating multiple generic rows. It is important that all updates take place or none of them do. This is known as a transaction. The [Update]() method on a ClarifyDataSet acts as a transactional wrapper for generic operations. It is similar to the Query method in that it takes a list of ClarifyGeneric objects to update and performs the update operations on them in a single transaction.

#### Update/Insert Statement Batching

On database platforms that support statement batching (i.e. Microsoft SQL Server, but not Oracle), the ClarifyDataSet can submit all update and insert statements as a single batch/round-trip to the database. Select statements cannot be batched efficiently due to the complexity of Generic child/parent relationships.

#### Generic DataSet Membership

Generics created via the [CreateGeneric]() method on an instance of ClarifyDataSet. The underlying data of the ClarifyGenerics are stored in the ClarifyDataSet. ClarifyGenerics from different ClarifyDataSets cannot be related. ClarifyGenerics created via [Traversal]() methods are always members of their parent generic's ClarifyDataSet. A ClarifyGeneric cannot be moved or removed from its containing ClarifyDataSet.

#### *Using ClarifyDataSets*

[C#] 
```csharp
// Create the dataset which will contain the generics
ClarifyDataSet dataSet = new ClarifyDataSet(session);

// create a case generic
ClarifyGeneric gCase = dataSet.CreateGeneric( "case" );
gCase.AppendFilter("title", StringOps.Equals, "my case");

// create a site generic
ClarifyGeneric gSite = dataSet.CreateGeneric( "site" );
gSite.AppendFilter("name", StringOps.Equals, "my site");

// create a contact generic
ClarifyGeneric gContact = dataSet.CreateGeneric( "contact" );
gContact.AppendFilter("e_mail", StringOps.Equals, "test@foo.com");

//all queries done at once
dataSet.Query( gCase, gSite, gContact );

ClarifyDataRow caseRow = gCase.Rows[0];
ClarifyDataRow siteRow = gSite.Rows[0];
ClarifyDataRow contactRow = gContact.Rows[0];

caseRow.RelateRecord( siteRow, "case_reporter2site");
contactRow["e_mail"] = "bar@foo.com";

//all updates done within a transaction
dataSet.Update( gCase, gSite, gContact );
```

[Visual Basic] 
```vbnet
// Create the dataset which will contain the generics
Dim dataSet As New ClarifyDataSet(session)

'create a case generic
Dim gCase As ClarifyGeneric = dataSet.CreateGeneric("case")
gCase.AppendFilter("title", FChoice.Foundation.StringOps.Equals, "my case")

'create a site generic
Dim gSite As ClarifyGeneric = dataSet.CreateGeneric("site")
gSite.AppendFilter("name", StringOps.Equals, "my site")

'create a contact generic
Dim gContact As ClarifyGeneric = dataSet.CreateGeneric("contact")
gContact.AppendFilter("e_mail", StringOps.Equals, "test@foo.com")

'all queries done at once
dataSet.Query( gCase, gSite, gContact );

Dim caseRow As ClarifyDataRow = gCase.Rows(0)
Dim siteRow As ClarifyDataRow = gSite.Rows(0)
Dim contactRow As ClarifyDataRow = gContact.Rows(0)

caseRow.RelateRecord(siteRow, "case_reporter2site")
contactRow("e_mail") = "bar@foo.com"

'all updates done within a transaction
dataSet.Update( gCase, gSite, gContact );
```

##### See Also

[Basic fcSDK Configuration](/articles/basic-configuration.md)
