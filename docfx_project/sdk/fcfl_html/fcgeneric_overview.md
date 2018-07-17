_FCFL FCGeneric Object_
-----------------------

**Overview**

This is the core business object in the **FCFL** product. Each instance of an FCGeneric generic object represents records from either one table or one view in the database. The generic object allows you to query the database for rows from the table or view, to add, update, or delete rows (tables only).

Creating a generic object is easy. You must declare a variable to hold the generic. Then you create it using the CreateGeneric method of the session object. You **MUST** use this method, or the generic object will not be properly initialized.

The following are examples of how to create a generic in both JavaScript and Visual Basic:

**JavaScript**:

var boContact = FCSession.CreateGeneric();

**Visual Basic**:

Dim case_obj As FCGeneric

Set case_obj = fc_session.CreateGeneric()

Generic objects have a familiar interface, similar to many business object structures (include Microsoft ADO, on which it is based). See the Programming Guide for more details on using generic objects.

Since each generic object only represents one table or view, you must use multiple generics when creating a complex object. For example, to insert (create) a new case, you must add a case record and a condition record. Optionally, you may choose to add up to three act_entry records, up to three time_bomb records, and a phone_notes record. Each of these tables would require a generic object to hold the records for that table. It can be complex, but isn't too hard once you're used to it.

**Note**: All of this complex functionality is already provided for you in the First Choice Software Business Object API Toolkits. Contact First Choice Software for more details.