_Midnight_
----------

**Object and Type**

Object  : FCApplication

Type     : Property

**Prototype**

Public Property Get Midnight() As String

Public Property Let Midnight(ByVal in_str As String)

**Description**

This property is specific to Oracle version 7.x databases. It should not be used for Oracle 8 or Oracle 9 databases.

It is part of a workaround for a bug in the OLEDB driver for Oracle.

The midnight property should be set to a valid time string for your database. For most customers, this will be "12:00:00 AM".

The value may also be set in the fc.env file. Refer to the fc.env section of the FCFL User Guide for more information.

**Example**

The following example sets the midnight time.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

FCApplication.Midnight='12:00:00 AM';