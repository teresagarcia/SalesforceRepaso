public with sharing class CampaignController {

  
    public CampaignController(ApexPages.StandardController controller) {
      
    }

    public Pagereference goToList(){
        PageReference pr=Page.ListCampaigns;
        return pr;
    }

      public Pagereference goToCampaign(){
        PageReference pr=Page.AddCampaign;
        return pr;
    }

}
