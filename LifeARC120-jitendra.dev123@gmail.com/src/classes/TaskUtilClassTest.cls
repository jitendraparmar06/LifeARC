@isTest
public class TaskUtilClassTest {
    @isTest static void testTaskPriority() {
        String pri = TaskUtilityClass1.getTaskPriority('NY');
        System.assertEquals('Normal', pri);
    }
    
    @isTest static void testTaskHighPriority() {
        String pri = TaskUtilityClass1.getTaskPriority('CA');
        System.assertEquals('High', pri);
    }
    
    @isTest static void testTaskPriorityInvalid() {
        String pri = TaskUtilityClass1.getTaskPriority('Montana');
        System.assertEquals(null, pri);
    }
}