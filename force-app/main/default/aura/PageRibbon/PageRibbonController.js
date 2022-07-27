({
    fetchContractList : function(component, event, helper) {
        helper.setColumnsHelper(component, event);
        //helper.fetchContractsHelper(component, event);
    },
    

    openNewContractModel: function(component, event, helper) {
        component.set("v.isNewContractModelOpen", true);
    },
    
    closeNewContractModel: function(component, event, helper) {
        component.set("v.isNewContractModelOpen", false);
    },
    
    saveNewContract: function(component, event, helper) {
        alert('Contract Saved');
        component.set("v.isNewContractModelOpen", false);
    },
})