public class StudentController {
 public List<selectoption> Langlist {get;set;}
    public string selectedLang{get;set;}
   public Student__c s { get; set; }

   public List<Student__c> samepage { get; set; }
   
   public StudentController(){
      s=new Student__c();
   }
     public StudentController(ApexPages.StandardController controller) {
		selectedLang='en';
    }

   public PageReference save() {
       
     samepage= [select Name,RollNumber__c,Gender__c,Course__c,H_S_C__c,S_S_C__c,City__c,State__c,Country__c
                from Student__c   where id=:s.id];
       insert s;
      s1();
       return null;
   }
  public void s1()
  {
      ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Saved successfully!'));
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