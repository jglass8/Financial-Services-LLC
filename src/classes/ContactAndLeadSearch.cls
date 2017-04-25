public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String a)
    {
        List<List< SObject>> searchList = [FIND :a IN ALL FIELDS 
                                           RETURNING  Contact(FirstName,LastName), LEAD (FirstName,LastName)];
        
            return searchList;
    }
}