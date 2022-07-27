({
    setColumnsHelper : function(component, helper) {
        component.set('v.contractColumns', [
            {label: 'Account Name', fieldName: 'AccountId', type: 'text'},
            {label: 'Activated Date', fieldName: 'ActivatedDate', type: 'Date/Time'},
            {label: 'Billing Address', fieldName: 'BillingAddress', type: 'address'},
        ]);

            var dtArray = [];
                      let contract1 = {AccountId: 'NDA', ActivatedDate: '12/12/2021', BillingAddress: '31/12/2021'};                     
                      dtArray.push(contract1);   
        component.set('v.contractData', contract1);
    },
})