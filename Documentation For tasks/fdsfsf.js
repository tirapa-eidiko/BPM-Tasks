var column1 = new TWSearchColumn();
column1.type = TWSearchColumn.Types.ProcessInstance;
column1.name = TWSearchColumn.ProcessInstanceColumns.ID;

var column2 = new TWSearchColumn();
column2.type = TWSearchColumn.Types.Task;
column2.name = TWSearchColumn.TaskColumns.Subject;

var column4 = new TWSearchColumn();
column4.type = TWSearchColumn.Types.Task;
column4.name = TWSearchColumn.TaskColumns.Status;

var column3 = new TWSearchColumn();
column3.type = TWSearchColumn.Types.Task;
column3.name = TWSearchColumn.TaskColumns.ID;

var cond1 = new TWSearchCondition();
cond1.column = column1;
cond1.operator = TWSearchCondition.Operations.Equals;
cond1.value = tw.system.convertIDToDB(tw.system.currentProcessInstance.id);

var cond2 = new TWSearchCondition();
cond2.column = column2;
cond2.operator = TWSearchCondition.Operations.Equals;
cond2.value = tw.local.taskToFinish;

var search = new TWSearch();

search.columns = [column3,column4];
search.conditions = new Array(cond1,cond2);
search.organizedBy = TWSearch.OrganizeByTypes.Task;
var results = search.execute();
var taskId = results.rows[0].values[0];
var status = results.rows[0].values[1];
if(taskId && status!="Closed"){
    tw.system.findTaskByID(taskId).reassignTo(tw.local.currentUser);
    var map = new tw.object.Map();
    var user = tw.system.org.findUserByName(tw.local.currentUser);
    tw.system.findTaskByID(taskId).complete(user, map);
}
