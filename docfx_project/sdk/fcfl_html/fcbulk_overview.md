### FCFL FCBulk Object

**Overview**

The FCBulk object is used to group generic objects together. Every generic object is always in one bulk or another. You may easily change which bulk a given generic object is in by changing the BulkName property of the generic object.

Using bulks is optional, but very useful. You may use the action methods ([Query](Query(FCBulk).md), [Update](Update(FCBulk).md), and [UpdateAll](UpdateAll(FCBulk).md)) on a generic object. But, if you want all of the queries or updates for multiple generics to be performed in one unit of work (for referential integrity), you should use a bulk.

When you call on the action methods (such as UpdateAll) for a bulk object, all of the updates for all of the generics in that bulk will be completed in one transaction. All of the items in the bulk will be committed, or all will be rolled back. This is a simple, yet crucial concept for database programming.

There is a default bulk object, whose name is the empty string (""). When you create a new generic object, it is automatically placed in this bulk. You may then change the bulk for that generic.

You do not need to ever worry about creating bulks. **FCFL** does that for you. When you assign a generic to a bulk, **FCFL** will create the bulk for you, if needed.

Of the various properties and methods exposed by the FCBulk object, the only ones you will commonly use are the [Query](Query(FCBulk).md), [Update](Update(FCBulk).md), and [UpdateAll](UpdateAll(FCBulk).md) methods.