# Developer Walkthrough - Workflow Event Handling

## Workflow Event Handling

One of the more common requirements for objects created for Clarify is performing workflow operations on those objects, such as assigning cases or dispatching change requests. **Dovetail SDK** provides a powerful set of tools to make workflow operations easy to implement. This guide explains how to get started.

### Using WorkflowManager for Workflow Actions

**Dovetail SDK** supports the following Workflow Methods for Queueable Objects in Clarify with the WorkflowManager object:

* Accept
* Assign
* Dispatch
* Forward
* Move
* Reject
* Yank
* ChangeStatus

Queueable Object Types that are currently supported:

```
CASE, SUBCASE, DEMAND_DTL, TASK, OPPORTUNITY, CONTRACT, BUG, PROBDESC, DIALOGUE
```

All of these methods follow the same basic model for parameters. For example, the Dispatch method takes

* id number of the object being dispatched
* type of object being dispatched
* queue that the object is being dispatched to
* time that the dispatch occurred
* login name of the user performing the dispatch
* boolean indicating to generate time bombs

Here is the signature for the Dispatch method:

```
public WorkFlowInfo Dispatch(string idNum, string objectName, string queueName, DateTime dispatchDate, string userName, bool generateTimeBomb)
```
   
### Examples of using WorkflowManager:
   
The following examples demonstrate use of WorkflowManager APIs. The first example dispatches the case to the queue, and the second example accepts the case into the userís wipbin.
  
[C#]

```
// Dispatch Case 1 to the Support queue

string caseId = "1";
string queueName = "Support";
string userName = "sa";
bool generateTimeBombs = true;
DateTime eventTime = DateTime.Now;

ClarifyDataSet ds = new ClarifyDataSet(session);

WorkflowManager workflowManager = new WorkflowManager(ds);
workflowManager.Dispatch(caseId, "case", queueName, eventTime, userName, generateTimeBombs);


// Accept Case 1 into the default wipbin

string caseId = "1";
string wipbinTitle = "default";
string userName = "sa";
bool generateTimeBombs = true;
DateTime eventTime = DateTime.Now;

ClarifyDataSet ds = new ClarifyDataSet(session);

WorkflowManager workflowManager = new WorkflowManager(ds);
workflowManager.Accept(caseId, "case", wipbinTitle, eventTime, userName, generateTimeBombs);
```
   
### Using .Net Version of Compatibility Toolkits for Workflow Actions
   
**Dovetail SDK** also support workflow methods for queueable objects through the Compatibility Toolkits. These APIs are grouped by the toolkit which govern the objects primary functions. For example, the Case workflow APIs are found in the Support Toolkit. At this time, all of the queueable objects except Dialogue have compatibility versions of the workflow APIs.

Since the Compatibility Toolkits were originally developed in VB, all of the Compatibility Toolkit APIs are also provided for use in .Net applications. These APIs have names similar to the VB versions. Each one has a name with the pattern of *<Action><Object>*, i.e. **DispatchCase**. These APIs have a different signature, and all use a matching setup object, i.e. **DispatchCaseSetup**. The setup objects are created first, and have parameters for each required property.

Looking at the **DispatchCase** API, the only required properties are the case id number and the queue name. Correspondingly, the setup object only has two parameters:

[C#]

```
DispatchCaseSetup( string caseIdNum, string queue )
```
   
Once the setup object is created, then the other properties can also be set. This allows less code to be required to perform the operation, which makes it easier to use. It also allows the API to be easily modified if necessary. Here is an example of setting the optional properties:   

[C#]

```
string caseId = "1";
string queueName = "Support";

DispatchCaseSetup setup = new DispatchCaseSetup(caseId, queueName);
setup.DispatchDate = DateTime.Now;
setup.UserName = "sa";
setup.GenerateTimeBombs = false;
```   
   
At this point, the setup object is ready for use. The corresponding API uses its setup object as input, and the API is invoked:

[C#]

```
SupportToolkit supportToolkit = new SupportToolkit(fcApplication, fcSession);
ToolkitResult result = supportToolkit.DispatchCase(setup);
```
   
The ToolkitResult will have all of the details from executing the API. Any error code would be in the ReturnCode property.

[C#]

```
int returnCode = result.ReturnCode;
```   
   
### Summary

The APIs for the workflow events can be implemented in multiple environments. **Dovetail SDK** executes the same code to perform a workflow action, regardless of how the API is called. All of the necessary validation of the input parameters is done, and the appropriate activity logs and time bombs will be generated as required.

