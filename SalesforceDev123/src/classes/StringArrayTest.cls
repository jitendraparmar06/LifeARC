public class StringArrayTest {
    public static List<String> generateStringArray(integer num){
        List<String> stringList = new List<String>();
        for(integer i=0; i<num; i++){
            stringList.add('Test '+i);
        }
        return stringList;
    }
}