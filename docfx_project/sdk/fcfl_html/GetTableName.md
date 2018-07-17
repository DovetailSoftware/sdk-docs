_GetTableName_
--------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetTableName(ByVal TableNum As Long) As String

**Description**

This method returns the table name for a given table number (or view number). It reads this information from the Clarify ADP tables from the **FCFL** cache, so no database roundtrips are needed.

This method is for advanced users only, and will seldom be called for most applications.

**Note:** The name of the table returned will **not** include the "table_" prefix.

#### Parameters
**Parameter Name                Required?             Description                                                                                          **

TableNum                              Yes                         Number of table or view in the Clarify database.

**Returns**

The table name for the supplied table number. If the supplied number is not valid "" is returned.

**Example**

The following example prints out the table names for a Clarify table and a Clarify view.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

Response.Write("Table name for table 52 = " +

            FCApp.GetTableName(52));

Response.Write("View name for view 88 = " +

            FCApp.GetTableName(88));