public class CheckRecursive {
    private static Boolean run=true;
    public static Boolean runonce()
    {
        if (run)
        {
            run=false;
            return true;
        }
        else {
            return run;
        }
    }
    

}