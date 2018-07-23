# Accessing Data With ClarifyGeneric

One of the basic and most important services the fcSDK offers (through FCFL.NET) is data access. You can use FCFL.NET to query, insert, update, and delete data in your Clarify™ database. fcSDK is designed to work within the rules of the Clarify™ system. This means that, if used properly, the fcSDK will read data written by other Clarify™ clients and also write data that is compatibile with them.

### Querying Data

To query data with FCFL.NET, define a ClarifyGeneric for each table or view from which you wish to query, specify the relations that connect them (if at all) and then, if necessary, specify which fields to return, filters, and sorts to restrict the query.

Once the ClarifyGenerics are set up, they can be queried individually, or together as part of a single transaction using a ClarifyDataSet object.

In order to create a new ClarifyGeneric, you must first create a new instance of a ClarifyDataSet object (use the new operator (New in Visual Basic). Once the ClarifyDataSet instance is created, call the CreateGeneric method on the ClarifyDataSet instance.

ClarifyGeneric contains many methods for customizing how it queries or updates data, relates to other ClarifyGeneric instances, or relates to data in other tables in the database. Please consult the API reference for ClarifyGeneric for more information.

The following example will query for sites whose type is 1, sorted by ID Number descending. The example will then print out each site queried.

[C#] 
```csharp
//First, create the dataset which will contain the generics
ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Get all sites whose 'type' is 1 and sort by site ID, descending
ClarifyGeneric gSite = dataSet.CreateGeneric("site");
gSite.AppendFilter( "type", NumberOps.Equals, 1 );
gSite.AppendSort("site_id", false);

// Now query the data
gSite.Query();

// While there are more sites...
//  Print out the ID and name
foreach( ClarifyDataRow siteRow in gSite )
{
   Console.WriteLine("Site ID, Name: {0}, {1}", siteRow["site_id"], siteRow["name"]);
}
```

[Visual Basic] 
```vbnet
'First, create the dataset which will contain the generics
Dim dataSet As New ClarifyDataSet(session)

' Get all sites whose 'type' is 1 and sort by site ID, descending
Dim gSite As ClarifyGeneric = dataSet.CreateGeneric("site")
gSite.AppendFilter( "type", NumberOps.Equals, 1 )
gSite.AppendSort("site_id", false)

' Now query the data
gSite.Query()

' While there are more sites...
'  Print out the ID and name
For Each siteRow As ClarifyDataRow In gSite

   Console.WriteLine("Site ID, Name: {0}, {1}", siteRow("site_id"), siteRow("name"))

Next 
```

In the above example, the site table query is setup to find the proper rows and sort them in the proper order -- sites whose type is 1 and sort them by their ID, descending. Next, the ClarifyGeneric is queried. Note that most of the queries that are done involve multiple ClarifyGenerics in which case the Query method on the ClarifyDataSet object is used to query them all as part of a single transaction.	Once the query is executed, the results are displayed to the console. For each site row returned by the query, this example prints out some information about that site.

### Query Limitation

In most cases, queries will be unconstrained. That is, the query will return back as many rows as is possible. All of the records will be returned and put into the ClarifyGeneric's Rows collection.

There are certain circumstances, however, where limiting the number of records return is a requirement (for example, queries entered by end users through a 'Case Query' web page). If the table being queried has a large number of records (such as the Case table), it may be desirable to limit the number of results to, for example, 500 rows or less.

By default, all FCFL.NET queries are unconstrained. In order to constrain queries, set the MaximumRows property on a ClarifyGeneric instance. Setting this property will cause 2 things to happen:

The number of rows returned will be the number specified or less.

If the number of rows that can be returned is greater than the specified MaximumRows value, the MaximumRowsExceeded event will be fired during a Query operation. This allows the default behavior (mentioned in [1] above) to be optionally overriden. Handling this event is not required unless special logic is desired.

The following example shows how to use the MaximumRows property and how to use the MaximumRowsExceeded event to control how ClarifyGeneric behaves:

[C#] 
```csharp
  // Get 2 cases
  ClarifyGeneric gCase = session.CreateGeneric("case");
  gCase.MaximumRows = 2;
  gCase.MaximumRowsExceeded += new MaximumRowsExceededEventHandler(gCase_MaximumRowsExceeded);

  // Now query the data
  gCase.Query();

  // While there are more cases
  //  Print out the case info
  foreach( ClarifyDataRow caseRow in gCase )
  {
     Console.WriteLine("Case ID, Title: {0}, {1}", caseRow["id_number"], caseRow["title"]);
  }
}

private static void gCase_MaximumRowsExceeded(FCGeneric sender, MaximumRowsExceededEventArgs args)
{
  // Get the total rows that could be returned by this query if unconstrained
  int totalRows = args.TotalPossibleRows;

  // To re-constrain the query
  args.RowsToReturn = 6;

  // -OR-

  // To cancel the query
  args.CancelQuery = true;
} 
```

[Visual Basic] 
...vbnet

  ' Get 2 cases
  Dim gCase As ClarifyGeneric = session.CreateGeneric("case")
  gCase.MaximumRows = 2
  AddHandler gCase.MaximumRowsExceeded, AddressOf gCase_MaximumRowsExceeded

  ' Now query the data
  gCase.Query()

  ' While there are more cases
  '  Print out the case info
  For Each caseRow As ClarifyDataRow In gCase
     Console.WriteLine("Case ID, Title: {0}, {1}", caseRow("id_number"), caseRow("title"))
  Next
End Sub

Private Sub gCase_MaximumRowsExceeded( ByVal sender As FCGeneric, ByVal args As MaximumRowsExceededEventArgs )

  ' Get the total rows that could be returned by this query if unconstrained
  Dim totalRows As Integer = args.TotalPossibleRows

  ' To re-constrain the query
  args.RowsToReturn = 6

  ' -OR-

  ' To cancel the query
  args.CancelQuery = True
End Sub
```

This example demonstrates how to constrain queries using the MaximumRows property. To gain finer-grained control over the behavior exhibited when the MaximumRows limit is exceeded, add an event handler to the MaximumRowsExceeded event. In this event handler, the total rows that would be returned if this were an unconstrained query can be retrieved using the TotalPossibleRows property on the MaximumRowsExceededEventArgs object instance. Likewise, the event handler can tell ClarifyGeneric to cancel the query altogether (using the CancelQuery property), or to redefine the row limit on the query (using the RowsToReturn property). Redefining the query is useful, for example, if the row limit is 100 rows and 101 rows are returned. Since there is only one extra row, it would be helpful to just return all 101 rows instead of hard-limiting the results to 100 rows.

Writing Data

FCFL.NET's ClarifyGeneric object can also write data. There are three basic operations which write data to the database:

Update Data
Insert Data
Delete Data

There are two main ways of performing these operations using ClarifyGeneric:

Modifying previously-queried data
Setting data on new rows flagged for updating an existing row in the database (covered later in the "Updating A Row Without Querying First" section). Once the data is modified, the data in a single row, data in all the rows in a ClarifyGeneric, or data in all the rows in all the generics in a ClarifyDataSet can be committed to the database. For more information on how to do this, see the "Committing Your Changes" section.
IMPORTANT: Updates, Deletes, and Inserts are not valid on view-based ClarifyGenerics or ClarifyGenerics queried using the IsDistinct flag.

Updating Data
There are two main patterns which are used to modify the data in a ClarifyGeneric:

Change a data field
Relate/Unrelate this record to/from a record in another ClarifyGeneric
The first pattern used to modify a ClarifyGeneric is similar to the way the DataSet, DataTable, and DataRow pattern works in ADO.NET. ClarifyGeneric (similar to a DataTable) contains a collection of ClarifyDataRow objects (similar to DataRow). Each row has an indexer for the field, or column, in that row. To modify a particular field's value in a row, use the indexer (or Item property) and pass in the field's 0-based index or the name of the field. For example:

[C#] 
```csharp
// Get the desired row (the first one, in this example)
ClarifyDataRow row = gCase[0];

// Set the alt_address field
row["alt_address"] = "Hello!"; 
```

[Visual Basic] 
```vbnet
' Get the desired row (the first one, in this example)
Dim row As ClarifyDataRow = gCase(0)

' Set the alt_address field
row("alt_address") = "Hello!"	
```

The second pattern used to modify data in a ClarifyGeneric is to relate or unrelate records. There are several convenience methods on ClarifyGeneric and ClarifyDataRow which help with setting up or removing different types of relations. The most common of these methods is the RelateRecord method on the ClarifyDataRow object. This method allows two records to be related using a specified relation name. For example, to relate a specific case to a site:

[C#] 
```csharp
// Relate a specific case row to a site row
caseRow.RelateRecord(siteRow, "case_reporter2site"); 
```

[Visual Basic] 
```vbnet
' Relate a specific case row to a site row

caseRow.RelateRecord(siteRow, "case_reporter2site")
```

Relations can be called from either side, FCFL.NET will relate the records correctly regardless of which side of the relation is being related. For example, a case row can be related to a site row, or a site row can be related to a case row and FCFL.NET will write the correct records to the database to ensure that the two records are related properly, according to the rules of the Clarify™ system.

NOTE: It is possible to relate two new records (that do not yet have assigned objids). FCFL.NET will assign the objids and resolve the relationships when updates are committed. See below for more information on adding new records and committing changes.

RelateRecord requires both rows to already exist in memory. This means that both rows were queried previously. There are occasions, however, where the objid of the record to relate is already known (for example, it was passed in the querystring of a page in an ASP web application). It would be inefficient to query the database just to have a record to that RelateRecords can be called. In this circumstance, the RelateByID method should be used. This method allows an already-queried record to be related to a previously-known objid.

NOTE: In order to call any of the "Relate*" methods on a particular ClarifyDataRow, the row's parent ClarifyGeneric cannot have been queried using the IsDistinct flag. Also, if using RelateRecord on two ClarifyDataRows, the rows' parent ClarifyGenerics must belong to the same ClarifyDataSet.

IMPORTANT: Updates, Deletes, and Inserts are not valid on view-based ClarifyGenerics or ClarifyGenerics queried using the IsDistinct flag.


Inserting Data

To add a new row to the database, use the AddNew method. This method returns a new ClarifyDataRow instance initialized with all the fields for the table to which it belongs. The data on the fields can be set using this object in the same manner in which existing rows are updated (see Updating Data).

NOTE: It is not necessary to set the "objid" field on a new record. FCFL.NET will take care of objid generation automatically. Also, if two new rows are related, FCFL.NET will assign the objids and resolve the relationships between the two new records properly.

WARNING: FCFL.NET ensures that the basic minimum data requirements are met when inserting or updating records. However, business logic such as required relations (i.e. a case must be related to a site, etc) are NOT enforced by FCFL.NET. This is the responsibility of the application using FCFL.NET.

The following example adds a new contact_role:

[C#] 
```csharp
//First, create the dataset which will contain the generics
ClarifyDataSet dataSet = new ClarifyDataSet(session);

// Get one specific contact
ClarifyGeneric gContact = dataSet.CreateGeneric("contact");
gContact.AppendFilter("objid", NumberOps.Equals, 268435457);

// Get one specific site
ClarifyGeneric gSite = dataSet.CreateGeneric("site");
gSite.AppendFilter("objid", NumberOps.Equals, 268435457);

// Query both via the ClarifyDataSet
dataSet.Query(gContact, gSite);

// Now create a new contact role
// Set it as a secondary role and relate it to the contact
// and site
// NOTE: In order for RelateRecord to work, the two generics
//    must be in the same ClarifyDataSet
ClarifyGeneric gRole = dataSet.CreateGeneric("contact_role");
ClarifyDataRow row = gRole.AddNew();
row["primary_site"] = 2;
row["role_name"] = "Default";
row.RelateRecord( gContact[0], "contact_role2contact" );
row.RelateRecord( gSite[0], "contact_role2site" );
row.Update(); 
```

[Visual Basic] 
```vbnet
'First, create the dataset which will contain the generics

Dim dataSet As New ClarifyDataSet(session)

' Get one specific contact
Dim gContact As ClarifyGeneric = dataSet.CreateGeneric("contact")
gContact.AppendFilter("objid", NumberOps.Equals, 268435457)

' Get one specific site
Dim gSite As ClarifyGeneric = dataSet.CreateGeneric("site")
gSite.AppendFilter("objid", NumberOps.Equals, 268435457)

' Query both via the ClarifyDataSet
dataSet.Query(gContact, gSite)

' Now create a new contact role
' Set it as a secondary role and relate it to the contact
' and site
' NOTE: In order for RelateRecord to work, the two generics
'    must be in the same ClarifyDataSet
Dim gRole As ClarifyGeneric = dataSet.CreateGeneric("contact_role")
Dim row As ClarifyDataRow = gRole.AddNew()
row("primary_site") = 2
row("role_name") = "Default"
row.RelateRecord( gContact(0), "contact_role2contact" )
row.RelateRecord( gSite(0), "contact_role2site" )
row.Update() 
```

WARNING: The above example is not complete and is for illustration purposes only. It may leave your contact_role table in an invalid state and may cause other application using this database (such as the Clarify™ thick client) to fail.

IMPORTANT: Updates, Deletes, and Inserts are not valid on view-based ClarifyGenerics or ClarifyGenerics queried using the IsDistinct flag.

### Updating A Row Without Querying First

For instances where the objid of a particular record is known and only a small bit of data needs to be updated (a few fields), it would be inefficient to query the row for the sole purpose of updating one or a few fields. This would involve two database round trips. It would be more efficient to create a new row in memory which reprepsents the real row in the database, change only the fields necessary, and then update the database using only a single database round trip. The AddForUpdate method on a ClarifyGeneric instance provides a convenient way to do this. This method will return a special row with no data in it. No query is executed to produce the row, it is created according to cached ADP/Schema data. The row's field values can then be changed as necessary. Only fields whose values have changed will be updated in the database when committing the operation.

### Deleting Data

There are two main ways to delete a record in the database using FCFL.NET:

* Call the Delete method on an existing ClarifyDataRow
* Call the DeleteById method on ClarifyGeneric if the objid for the row is already known.

The changes caused by Delete or DeleteById will not happen until the operation is committed. For more information about committing operations, see the section on Committing Changes.

NOTE: After calling the Delete method on a row, the row will be invalid. No further methods or properties should be called on that row. Setting the row reference variable to null (Nothing in Visual Basic) is the safest way to ensure that the row will not get accessed again.

When a row is deleted, all relations that point to that record (rows in other tables including MTM tables) will be NULL'd out (or the MTM row deleted in the case of MTM relationships). Nothing will point to that record any longer. If the related rows have mandatory relations, they will be pointed to the mandatory (-2) row.

WARNING: Deleting records may leave your Clarify™ data in an inconsistent state and could cause other clients to fail when operating against the same database. Deleting data can leave required relationships unfulfilled, among other problems. For mass deletions/purges, please use a special Purge/Archive tool.

NOTE: If Delete is called on a row that was just created as a result of the AddNew method, the row will become invalidated and will not be inserted or deleted. The row will no longer be valid and cannot be manipulated further. See above warning about deleting rows for for more information.

IMPORTANT: Updates, Deletes, and Inserts are not valid on view-based ClarifyGenerics or ClarifyGenerics queried using the IsDistinct flag.


Committing Your Changes
When all the desired changes have been performed on a row, ClarifyGeneric, or generics in a ClarifyDataSet, the operation must be committed to the database. There are three methods available depending on how large of scope of update is required:

* Single Row: Call Update on the specific ClarifyDataRow
   (NOTE: Except for rows which have been deleted. These rows are no longer valid and cannot be accessed. Deletions can only take affect by calling Update on the ClarifyGeneric or Update on the ClarifyDataSet).
* Multiple Rows, Single Table: Call Update on the specific ClarifyGeneric.
* Multiple Rows, Multiple Tables in the same ClarifyDataSet: Call Update on the specific ClarifyDataSet.

Once one of these methods is called, the changes are immediately made to the database. Calling Update on a ClarifyGeneric or Update on a ClarifyDataSet processes all the rows as part of a single database transaction.

### Handling NULL Values

In the Clarify™ system, most fields are non-NULLable. There are a few exceptions, but non-null is generally the case. In the rare instances when NULL values must be dealt with, this section will cover how to use NULL values with ClarifyGeneric.

It is important to understand that NULL is not the same thing as an empty string (''). The empty string is a non-null value which simply has no string data in it. If you attempt to use one for the other, it will fail. In Microsoft™ SQL Server™ and Sybase™, for example, (with a non-nullable field), an empty or populated string are the only two valid values. The database will not allow a NULL value.

There are four major circumstances in which NULL values will be a concern. The first is querying data, the second is testing for a NULL value in a field, the third is converting NULLs to empty strings, and the fourth is writing data.

### Querying NULL Data

ClarifyGeneric provides a convient way to filter on NULL values by using the AppendFilterIsNull method. This method allows a given field to be filtered on its NULL or non-NULL state. Alternatively, the QueryEmptyToNull property on a ClarifyGeneric can be set before the Query method is called. Next, call AppendFilter and use the StringOps.Equal operation and a value of String.Empty. ClarifyGeneric will then process the empty string appropriately according to the rules of the underlying database. Either way is acceptable and depends on the specific circumstance and usage pattern.

### Testing NULL Data

To test a specific field in a ClarifyDataRow for a NULL value, compare it to the System.DBNull.Value object from the .NET Framework.

### Converting NULL Strings to Empty Strings

To have ClarifyGeneric automatically convert all NULL values to String.Empty, set the SetNullStringsToEmpty property to true. When accessing a field on a specific ClarifyDataRow, which is actually NULL underneath, String.Empty will be returned instead. If Update is later called, ClarifyGeneric will recognize that the field is still NULL (NOT String.Empty, assuming it was not directly modified) and not update the database.

NOTE: To have this behavior be the default for all ClarifyGenerics in the session, set the SetNullStringsToEmpty property on the current ClarifySession. instance.

### Writing NULL Data

To set a field on a ClarifyDataRow to NULL and have it saved to the database as NULL, simply set the value of the field to DBNull.Value. For more information on updating the value of a field in a ClarifyDataRow, see the section above called Updating Data
