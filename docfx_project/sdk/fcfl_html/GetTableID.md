_GetTableID_
------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

Public Function GetTableID(ByVal TableName As String) As Long

**Description**

This method returns the table number (or ID) for a given table name (or view name). It reads this information from the Clarify ADP tables from the **FCFL** cache, so no database roundtrips are needed.

This method is for advanced users only, and will seldom be called for most applications.

**Note:** The name of the table provided should **not** include the "table_" prefix.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| TableName | Yes | Name of table or view in the Clarify database. |

**Returns**

The table number for the supplied table name. If no table name is found, -1 is returned.

**Example**

The following example prints out the table number for a Clarify table and a Clarify view.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

Response.Write("Table number for contact = " +

            FCApp.GetTableID("contact"));

Response.Write("View number for site_view = " +

            FCApp.GetTableID("site_view"));