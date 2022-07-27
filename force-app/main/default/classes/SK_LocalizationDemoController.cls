public class SK_LocalizationDemoController {
	public string selectedLang{get;set;}
    public SK_LocalizationDemoController(ApexPages.StandardController controller) {
		selectedLang='en';
    }

    
    public List<selectoption> getAvailableLanguages(){
    
        List<selectOption> options = new List<selectOption>();
        options.add(new selectOption('en','English'));
        options.add(new selectOption('de','German'));
        options.add(new selectOption('es','Spanish'));
        options.add(new selectOption('fr','French'));
        options.add(new selectOption('it','Italian'));
        
        return options;
    }
    
}