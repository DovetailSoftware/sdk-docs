# Developer Walkthrough - Advanced Filtering

The **fcSDK** now supports filtering ClarifyGenerics using nested *And* and *Or* operators. In the past **fcSDK** only supported *And* filtering via the AppendFilter methods. Limiting filtering to simple And filtering made the FCGeneric class easier to use but limited the flexibility with which you could select records from your Clarify database.

### The Generic Filter Property

**fcSDK** developers have a new starting place for filtering - ClarifyGeneric.Filter. This is the root filter for the ClarifyGeneric and it starts out empty. To add constraints to the records returned by a query AddFilter() needs to be called passing in a filter. Filters are easily created using the FilterType factory object. The following example shows some basic AND filtering against the root filter:

[C#] 
```csharp
ClarifyDataSet ds = new ClarifyDataSet(session);
ClarifyGeneric caseGeneric = ds.CreateGeneric("case");

//typical AND filtering

caseGeneric.Filter.AddFilter( FilterType.Equals( "id_number", "case 1" ));
caseGeneric.Filter.AddFilter( FilterType.StartsWith( "title", "ERROR:" ));
caseGeneric.Query();

//result filter   
//WHERE ( ( id_number = {0} ) AND ( title LIKE {1} ) )
```

### Moving beyond simple AND filtering

The generic's root filter property exposes an **AndFilter**. Thus all filters added to the root filter will be separated by AND keywords as in the example above. OR filtering is done in a similar fashion but an OrFilter must first be created and added to the root filter. The following example shows a simple **OrFilter** in action:

[C#] 
```csharp
ClarifyDataSet ds = new ClarifyDataSet(session);
ClarifyGeneric caseGeneric = ds.CreateGeneric("case");

//An example OR filter
OrFilter orFilter = FilterType.Or( FilterType.Equals( "id_number", "case 1" ),
    FilterType.StartsWith( "title", "ERROR:" ));
caseGeneric.Filter.AddFilter( orFilter ); //Note: this could all be on one line      
caseGeneric.Query();

//result
//( ( ( id_number = {0} ) OR ( title LIKE {1} ) ) )
```

### Logical filters support AddFilter

Currently only **AndFilter** and **OrFilter** objects support the AddFilter method. The following example shows creation of an OrFilter with four filters added.

[C#] 
```csharp
ClarifyDataSet ds = new ClarifyDataSet(session);
ClarifyGeneric caseGeneric = ds.CreateGeneric("case");

OrFilter orFilter2 = FilterType.Or( FilterType.Equals( "id_number", "case 1" ), 
   FilterType.StartsWith( "title", "ERROR:" ));

orFilter2.AddFilter( FilterType.IsNull("phone_num") );
orFilter2.AddFilter( FilterType.IsIn("objid", 268435457, 268435458, 268435459));

caseGeneric.Filter.AddFilter( orFilter2 ); 
caseGeneric.Query();

//result      
//( ( ( id_number = {0} ) OR ( title LIKE {1} ) OR ( phone_num IS NULL ) OR ( ( objid IN ({2},{3},{4}) ) ) 
```

### More complex filter groupings

**AndFilters** can easily be added to **OrFilters** to allow complex grouping of query constraints.

[C#] 
```csharp
ClarifyDataSet ds = new ClarifyDataSet(session);
ClarifyGeneric caseGeneric = ds.CreateGeneric("case");

//mix in AND with OR filter groupings

AndFilter andFilter = FilterType.And( FilterType.Equals( "id_number", "case 1" ), FilterType.StartsWith( "title", "ERROR:" ));
OrFilter orFilter3 = FilterType.Or( FilterType.Equals( "id_number", "case 1" ), andFilter );

caseGeneric.Filter.AddFilter( orFilter3 ); 
caseGeneric.Query();

//result
//( ( ( id_number = {0} ) OR ( ( id_number = {1} ) AND ( title LIKE {2} ) ) ) )
```
 