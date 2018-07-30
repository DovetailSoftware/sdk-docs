# Using the Caching Features of the fcSDK

During **FCFL.NET** initialization, frequently used and seldom updated data is pulled into memory as cache objects. The cached data is exposed as read only strongly typed objects.

**fcSDK**-based applications utilize cached objects to avoid extra round trips to the database which results in a dramatic application performance boost. They also make it easier to write **fcSDK**-based applications as commonly used data is readily available through strongly typed objects.

### Cache Lifecycle

The cached objects are loaded during [ClarifyApplication](../sdk/fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) initialization. If enabled, cache objects will be persisted to the file system (cache files) as it is much faster to load the cache objects directly from the file system rather than the database.

During initialization:

* If up-to-date cache files are found to be already on the system the application is initialized from the cache files.
* If cache files are present but found to be out-of-date they are refreshed from the database. For example, this happens to the [SchemaCache](../api/FChoice.Foundation.Clarify.SchemaCache.yml) when the Clarify Schema has been updated.
* If cache files are not present data is cached from the database and saved to cache files.
* Custom caches loaded.

Creation of cache files [can be disabled](basic-configuration.md#fcsdk-configuration-keys) using a configuration setting (fchoice.nocachefile). The [location of the cache files](basic-configuration.md#fcsdk-configuration-keys) is also configurable (fchoice.cachefilepath).

### Refreshing the Cache

Cache information can get out of date. Currently the only built-in cache object that will automatically detect if it is out-of-date is the Schema Cache. If you update non-schema data that you know to be cached you have two options.

* Manually delete the cache files on the file system.
* Programmatically update the cache using CacheManager

#### *Refreshing Caches*

[C#] 
```csharp
//update the Schema Cache
CacheManager.UpdateCaches( CacheType.Schema );

//update all caches except the Schema Cache
CacheManager.UpdateCaches( CacheType.Data );

//update all Caches
CacheManager.UpdateCaches( CacheType.All );
[Visual Basic] 

'updates the Schema Cache
CacheManager.UpdateCaches( CacheType.Schema )

'updates the all caches except the Schema Cache
CacheManager.UpdateCaches( CacheType.Data )

'update all Caches
CacheManager.UpdateCaches( CacheType.All );
```

### Built-In fcSDK caches

The **fcSDK** comes with four built-in caches available through properties on ClarifyApplication. Each cache has some common characteristics:

* They contain collections of strongly typed read-only cache objects providing access to the cache data.
* Each cache object may be related to child cache objects. For example, in the SchemaCache the Tables object contains a Relationships property.
* Each cache provides two access pathways to cached objects.
  * Collections index-able by an identifier.
  * Accessor methods (start with Get) allowing you to explicitly lookup a cached object.
* Caches also have validation methods (start with Is) that allow you to quickly check that an object is in the cache.

#### Schema Cache

The [SchemaCache](../api/FChoice.Foundation.Clarify.SchemaCache.yml) allows you to programmatically browse the Clarify Schema at runtime. You can find out what [Fields](../api/FChoice.Foundation.Clarify.SchemaViewField.yml) are in a [View](../api/FChoice.Foundation.Clarify.SchemaView.yml) or what [Relationships](../api/FChoice.Foundation.Clarify.RelationCollection.yml) are present for a [Table](../api/FChoice.Foundation.Clarify.SchemaTable.yml).

#### *Schema Cache Usage Example*

[C#] 
```csharp
//get a reference to the case table
SchemaTable caseTable = ClarifyApplication.Instance.SchemaCache.Tables["case"];

//print out some details about each case relation
foreach(SchemaRelation relation in caseTable.Relationships)
{
    Console.WriteLine("Case Relation : {0}, Target Table {1}, Cardinality {2}", 
        relation.Name, relation.TargetName, relation.Cardinality);
}

//print out some details about each case field
foreach(SchemaTableField field in caseTable.Fields)
{
    Console.WriteLine("Case Field : {0}, Field Default {1}", 
        field.Name, field.FieldDefault);
}
```

[Visual Basic] 
```
'get a reference to the case table
Dim caseTable As SchemaTable = ClarifyApplication.Instance.SchemaCache.Tables("case")

'print out some details about each case relation
For Each relation As SchemaRelation In caseTable.Relationships
    Console.WriteLine("Case Relation : {0}, Target Table {1}, Cardinality {2}", _
        relation.Name, relation.TargetName, relation.Cardinality)
Next

'print out some details about each case field
For Each field As SchemaTableField In caseTable.Fields
    Console.WriteLine("Case Field : {0}, Field Default {1}", _
        field.Name, field.FieldDefault)
Next
```

#### List Cache

The [ListCache](../api/FChoice.Foundation.Clarify.ListCache.yml) provides access to user defined ([HierarchicalStrings](../sdk/fcSDK~FChoice.Foundation.Clarify.IListCache~HierarchicalStrings.md)) and global ([GlobalStrings](../sdk/fcSDK~FChoice.Foundation.Clarify.IListCache~GlobalStrings.md)) lists.

#### Locale Cache

The [LocaleCache](../api/FChoice.Foundation.Clarify.LocaleCache.yml) provides access to [Country](../sdk/fcSDK~FChoice.Foundation.Clarify.LocaleCache~Countries.md), [State](../sdk/fcSDK~FChoice.Foundation.Clarify.DataObjects.Country~States.md) and [TimeZone](../sdk/FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAddressSetup~TimeZone.md) information.

For more information on how TimeZones are used in **fcSDK** see also [Time Zone Handling](time-zones.md).

#### String Cache

The [StringCache](../api/FChoice.Foundation.Clarify.StringCache.yml) allows access to all the localizable application strings present in the string_db or fc_string tables.

This cache is slightly different in that it does not expose a collection and its accessor methods start with “Find”.

#### Custom Caches

Data that is often accessed and seldom updated can benefit from caching. fcSDK's built-in caches attempt to cover basic Clarify and Dovetail database objects that meet this criteria. However, custom Clarify implementations may data that could also benefit from caching. By editing the application configuration file one or more [Custom Cache Providers](custom-cache-configuration.md) can be added and automatically put into memory during initialization.

While caching of often used, read-only data can greatly boost application performance please be aware that there are downsides to caching:

* Application memory utilization will grow proportionally with the amount of data that is being cached.
* If data being cached is modified the cache must be updated or the application restarted to refresh the cache.
* Custom Caches do not save cache files to the file system. Application start up time will be affected when loading large amounts of data from the database into the cache.

#### 

* [Basic Configuration](basic-configuration.md)
* [Time Zone Handling](time-zones.md)
* [Configuring Custom Data Providers](configuring-database-providers.md)
