({
	setColumns : function(cmp) {
        console.log('Setting columns for the data table!!');
		var columns=[
            {label:'Name', fieldName:'Name', type:'text'},
            {label:'DOB', fieldName:'DOB__c', type:'number', cellAttributes: { alignment: 'justify' }},
            {label:'Department', fieldName:'Department__c', type:'text'}
        ];
        console.log('Columns: '+JSON.stringify(columns));
        cmp.set('v.columns',columns);
	}
})