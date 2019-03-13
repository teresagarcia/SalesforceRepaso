public with sharing class CampaignController {

  
    public CampaignController(ApexPages.StandardController controller) {
      
    }

    public Pagereference goToList(){
        PageReference pr=Page.ListContacts;
        return pr;
    }

      public Pagereference goToAccount(){
        PageReference pr=Page.AddAccount;
        return pr;
    }

}
