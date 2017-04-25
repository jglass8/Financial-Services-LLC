public class NewCaseListController {
    public static List <Case> getNewCases(){
    List<Case> q = [Select Id, caseNumber FROM Case Where Status = 'New'];
        return q; 
        }
 }