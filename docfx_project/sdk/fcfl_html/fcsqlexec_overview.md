_FCFL FCSQLExec Object_
-----------------------

**Overview**

The FCSQLExec object is used when you wish to query an external (non-Clarify) database table using standard SQL. The FCGeneric object cannot do this, as it assumes certain things such as objid existence.

The FCSQLExec object can also be used to query tables in the Clarify database instance. This is useful in the common circumstance where you add a new (non-Clarify) table into the Clarify database instance. Since it uses straight SQL, there's no reason that the FCSQLExec object cannot be used to read/write Clarify tables directly, but that is not recommended.

Because this object only uses SQL, it is incumbent on the programmer to make sure that they get it right. Unlike the FCGeneric object, none of the details are taken care of for you. You must generate unique Ids (such as objids) yourself, you must take care of relations, etc.

If you plan on accessing a table other than the Clarify table to which you have logged in, you must use the OpenConnection (and later the CloseConnection) method.

If, however, you wish for an FCSQLExec object to simply access the database to which you are already logged in, you can do this by creating a new FCSQLExec object, and just executing SQL against it. You do not need to execute an OpenConnection method.

Creating a SQLExec object is easy. You must declare an variable to hold the SQLExec. Then you create it using the CreateSQLExec method of the session object. You MUST use this method, or the object will not be properly initialized.

The following are examples of how to create a SQLExec in both JavaScript and Visual Basic:

**JavaScript**:

var sqlTest = FCSession.CreateSQLExec();

**Visual Basic**:

Dim sql_obj As FCSQLExec

Set sql_obj = fc_session.CreateSQLExec()