public class OpporunityDemo {
    public static list<Opportunity> toQueryOnOpportunity(){
        list<Opportunity> listOpportunity = new List<Opportunity>([
            SELECT 
            Id,
            Name
            FROM 
            Opportunity 
            WHERE 
            amount>10000
            ORDER BY 
            CreatedDate ASC
            LIMIT 
            10
            OFFSET 
            2
            ALL ROWS
        ]);
                 System.debug(listOpportunity);
        return listOpportunity;
    }    
}