public class Intg_PostalCode {
    public List<String> Place{get;set;}
    public String Pincode{get;set;}
    
    public void GetPostalDetails()
    {
        Place=new List<String>();
        String en='https://api.postalpincode.in/pincode/'+Pincode;
        Http Pr=new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(en);
        request.setMethod('GET');
        
          HttpResponse response = Pr.send(request);
        String body = response.getBody();
        System.JSONParser jp= JSON.createParser(body);
        while(jp.nextToken()!=null)
        {
            if(jp.getText()=='Name')
            {
                jp.nextToken();
                Place.add(jp.getText());
            }
        }
    }

}