public class ListCampaignController {
 

    public ApexPages.StandardSetController setCampaigns {
        get {
            if(setCampaigns == null) {
                setCampaigns = new ApexPages.StandardSetController(
                    Database.getQueryLocator(
                        [SELECT Name, BudgetedCost FROM Campaign]
                    )
                );
            }
            return setCampaigns;
        }
        set;
    }

    // Initialize setCon and return a list of records
    public List<Campaign> getCampaigns() {
        return (List<Campaign>) setCampaigns.getRecords();
    }

    public Pagereference goToCampaign(){
        PageReference pr=Page.AddCampaign;
        return pr;
    }

}