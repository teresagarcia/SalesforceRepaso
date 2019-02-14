public class ListController {
 

    public ApexPages.StandardSetController setConTacts {
        get {
            if(setConTacts == null) {
                setConTacts = new ApexPages.StandardSetController(
                    Database.getQueryLocator(
                        [SELECT FirstName, LastName FROM Contact]
                    )
                );
            }
            return setConTacts;
        }
        set;
    }

    // Initialize setCon and return a list of records
    public List<Contact> getcontacts() {
        return (List<Contact>) setConTacts.getRecords();
    }
}