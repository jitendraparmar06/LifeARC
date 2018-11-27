@isTest
private class TemperatureConverterTest {
              
              @isTest static void testWarmTemp(){
                    Decimal d =TemperatureConverter.FahrenheitToCelsius(70);
                      System.assertEquals(21.11,d);
               }
              @isTest static void testFreezingPoint() {
                     Decimal f = TemperatureConverter.FahrenheitToCelsius(32);
                     System.assertEquals(0,f);
              }
              @isTest static void testBoilingPoint(){
                     Decimal b = TemperatureConverter.FahrenheitToCelsius(212);
                     System.assertEquals(100, b,'Boiling point temperature is not expected.');
              }
              @isTest static void  testNegativeTemp() {
                     Decimal n = TemperatureConverter.FahrenheitToCelsius(-10);
                     System.assertEquals(-23.33,n);
              }
    }