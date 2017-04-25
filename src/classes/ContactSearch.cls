public with sharing class ContactSearch
{
	public static List<Contact> searchForContacts( String a, String b) 
    {
        List<Contact> contacts = [Select ID,Name From Contact
                                 WHERE (LastName = :a AND MailingPostalCode = :b)];
		
		return contacts;
	}
}