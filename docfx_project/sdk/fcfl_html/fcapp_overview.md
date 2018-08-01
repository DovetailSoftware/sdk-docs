### FCFL FCApplication Object

**Overview**

The FCApplication object represents an application that will connect to a Clarify database. When you create an FCApplication object, the necessary DLLs to support the First Choice Foundation Library are loaded into memory.

The FCApplication object is used to manage cached information from the database, including meta-data and schema data.

You can use the FCApplication object to:

*   Initialize the FCApplication and connect to a Clarify database
*   Create new FCSession objects
*   Access cached data, such as lists, strings, states, countries, etc.

To create a new FCApplication object, use the CreateObject method of the language being scripted in. The following are examples of how to create an FCApplication in both JavaScript and Visual Basic:

**JavaScript**:

var FCApp = Server.CreateObject("FCFL.fcapplication");

**Visual Basic**:

Dim FCApp

Set FCApp = CreateObject("FCFL.fcapplication")