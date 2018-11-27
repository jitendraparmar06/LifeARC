@isTest
   private class TaskUtilTest {
       @isTest private static void testTaskPriority(){
                      String s= TaskUtil.getTaskPriority('NY');
                     System.assertEquals('Normal', s);
       }

       @isTest private static void testTaskHighPriority(){
                     String p = TaskUtil.getTaskPriority('CA');
                     System.assertEquals('High',p);
       }
       @isTest private static void testTaskLowPriority(){
                     String l = TaskUtil.getTaskPriority('Bhopal');
                     System.assertEquals(null,l);
       }
}