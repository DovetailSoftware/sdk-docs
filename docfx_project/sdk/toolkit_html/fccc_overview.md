## FCFL API Toolkit for ClearContracts

**Overview**

Many customers have wanted the ability to customize the Clarify environment easily by adding base Clarify functions (such as contract and quote creation, closure, modification, or support programs) into web applications.

The **First Choice Software FCFL API Toolkit for ClearContracts** solves these problems, as well as many others. The toolkit is a set of COM functions that you may add to your web pages, interfaces, or customizations.

All of the APIs perform the same base functions as the Clarify GUI - all database records are properly written, activity logs are generated to track the API call, and time bombs are added to the system so that business rules can be fired based on the API function call.

While all of the APIs mimic the Clarify base function, many of them provide augmented functionality that Clarify customers have requested. For example, the base Clarify create contract functionality always requires that you dispatch the contract in a separate operation. With the create contract APIs in the toolkit, you have the choice of placing the contract in any specific Queue when creating the contract.

The APIs are simple to use. One simple API call is provided for each function, and very few data values must be supplied. The APIs are flexible in that they provide a large number of optional arguments that allow you to customize the API calls as needed.

It should be also noted that a few of the contract operations (such as convert) are already provided by Clarify in ClearBasic form in the server's rulemgr (or rulemanager on UNIX) directory. This toolkit does not duplicate that functionality.