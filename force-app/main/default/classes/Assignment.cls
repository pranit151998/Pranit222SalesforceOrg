public class Assignment {
    public static void main()
    {
        List<AggregateResult>a=[Select LeadSource,count_Distinct(id) from lead group by LeadSource having count(LeadSource)>2];
        for(AggregateResult l:a)
        {
            System.debug(l);
        }
    }

}