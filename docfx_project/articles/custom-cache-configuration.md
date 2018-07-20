# Configuring Custom Cache Providers

## Configuring CacheManager to load a custom cache object

CacheManager looks in the .NET configuration file for a specific configuration section called "customCaches". You must define this section at the top (it must be at the top) of the configuration file in the "configSections" element.

For example:
```
<?xml version="1.0" encoding="utf-8" ?>
<configuration>
    <configSections>
        <section name="customCaches" type="FChoice.Foundation.CacheSectionHandler, FChoice.Foundation"/>
    </configSections>    
    
    ... (rest of config file) ...
</configuration>
```

Once you have defined the "customCaches" section, you can specify any number of custom caches using the "customCache" element.

For example:
```
    ... (start of config file referenced above) ...
    
    <customCaches>
        <customCache
            name="myCustomCache"
            type="MyNamespace.ClassName, MyAssemblyName"
            parameters="any optional initialization parameters here"  />
        <customCache
            name="anotherCustomCache"
            type="MyNamespace.AnotherClassName, MyAssemblyName"
            parameters="1, 2, 3, 4"  />
    </customCaches>
    
    ... (rest of config file) ...
   
</configuration>
```

### *customCache* Element Schema

This table describes the attributes required for the *customCache* element.

| Attribute | Required | Description |
|:--- |:--- |:--- |
| name | <span style="color:red;">Yes</span> | A key used by CacheManager to distinguish this cache. The instance of the cache created and loaded by CacheManager can be retrieved using this key with the CacheManager.GetCache method.<br/>**NOTE:** CacheManager will load hard-coded caches such as the ListCache and LocaleCache before loading custom caches. These caches have specific names. If you specify a custom cache name that conflicts with one of these hard-coded cache names, an error will be thrown. These names are:<br/><ul><li>configitem_cache</li><li>list_cache</li><li>locale_cache</li><li>schema_cache</li><li>string_cache</li></ul> |
| type | <span style="color:red;">Yes</span> | The fully qualified type name of a class which derrives from FChoice.Foundation.CacheBase.<br/>**NOTE:** Please refer to the [Type.GetType](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemtypeclassgettypetopic1.htm) method documentation for information for the specific format of the value of this attribute. |
| parameters | (see description) | Specifies any initialization parameters to pass to the custom cache object during initialization. Whether or not this attribute is required depends on the specific implementation of the custom cache object. For example, the CustomCache object which ships with the **fcSDK** requires this parameter to be a comma-delimited list of tables in the database to cache in memory and on disk. |

### Simple table caching using the CustomCache object

The **fcSDK** includes a simple "CustomCache" object which can cache one or more tables into a dataset. It executes a simple "SELECT * FROM" sql query for each of the table you specify. This is useful if you want to cache a small table or tables of static values.

In your config file, include the customCaches config section as mentioned above and define a custom cache with whatever name you wish to assign it. For the *type* attribute, use "FChoice.Foundation.CustomCache, FChoice.Foundation". The *parameters* attribute must contain at least one table name (the full SQL table name including the table_ prefix). Multiple tables can be specified separated by a comma.

For Example, if you wanted to cache the fc_string table (even though it's already cached):

```
    ... (start of config file referenced above) ...
    
    <customCaches>
        <customCache
            name="fcStringCache"
            type="FChoice.Foundation.CustomCache, FChoice.Foundation"
            parameters="table_fc_string"  />
    </customCaches>
    
    ... (rest of config file) ...
    
</configuration>
```

## Creating your own custom cache object

In order to have CacheManager load your custom cache object, you must derrive from FChoice.Foundation.CacheBase. At the very least, you must override the "InitCacheData" method.

### Cache load lifecycle

During Initialization:

* ReadCacheData
* (if persisted cache data found) LoadCacheData
* (else)
  * InitCacheData
  * PersistCacheData

During Cache Update (UpdateCache called)

* InitCacheData
* PersistCacheData

**NOTE:** ReadCacheData and PersistCacheData are not called if the "nocachefile" configuration value is set to "true". Please consult the [Basic Configuration Guide](basic-configuration.md) for more details on this value.

### *InitCacheData*

This method will be called when CacheManager cannot find any existing persisted cache data (on disk) for your object. The implementation of this method is expected to perform whatever steps are necessary to produce a data object. This object will be returned back to CacheManager which will then save it to disk. The default implementation expects this object to be a System.Data.DataSet object. CacheManager has a specific optimized binary serializer for DataSets. Generally, the implementation of this method will make a SQL query to a database and return a DataSet.

### Optionally, you can override the *LoadCacheData* method

This method will be called after the cache data has been loaded from the data source or read from the cache persistance (usually files on the disk). In this method is where you might create strongly-typed objects based on the data such as what the various **fcSDK** caches do with their objects (such as with the LocaleCache and the Country, FCTimeZone, and StateProvince objects).

It is not a requirement that this method do anything at all.

### Using a custom data object type (other than DataSet)

If you plan on working with a cache object of a type other than DataSet, you *MUST* override the PersistCacheData and ReadCacheData methods to handle the custom serialization of the data.

* *PersistCacheData:*
    This method takes two parameters: The object to persist and the recommended filename to use when saving the data of the object. It is not a requirement that this filename be used. If you choose not to use this filename, you must have a mechanism of producing consistent filenames based on the data source. For example, the default implementation produces a hash based on the database connection string. Data caches are tied to the database, so this is a unique identifying key for these caches. If your implementation depends on, for example, a web service, a hash of the URL would be a good unique identifying key for that datasource. Whatever the implementation, it must be consistent and reproducible from one run of the application to the next to ensure that the correct cache file gets loaded for the current data source.

    **NOTE:** If you manually generate a file name, ensure that you combine your file name with the value of the CacheManager.CacheFilePath property.

    **NOTE:** It is not even a requirement that you use a file to persist the cache data or even persist the data at all. However, you must ensure that if you do persist data to a medium other than the disk you be able to locate that data on subsequent runs of the application.

* *ReadCacheData:*
    This method takes only one parameter: The default file name from which to load the cache data. If you did not use the file name for persisting the cache data in PersistCacheData, do not use this file name. Your file name generation should consistently produce the same file name for a given data source. Use the new file name, instead, in this situation.

    If the cache data could not be found (i.e. someone manually deleted the file or there is a new base cache file path), simply return null signifying that the data could not be loaded. At this point CacheManager will call InitCacheData to load the cache data direct from the data source.

    **NOTE:** If you manually generate a file name, ensure that you combine your file name with the value of the CacheManager.CacheFilePath property.
