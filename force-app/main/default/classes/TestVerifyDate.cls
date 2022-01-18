@isTest
public class TestVerifyDate {
    
    @istest
    static void tarihlerinArasi30Gun(){
        Date gelecektarih = VerifyDate.CheckDates(date.valueOf('2021-12-10'),date.valueOf('2022-01-03'));
        System.assertEquals(date.valueOf('2022-01-03'), gelecektarih);
    }
    
    @istest 
    static void tarinlerinArasi30GunDegil(){
        Date gelecektarih2 = VerifyDate.CheckDates(date.valueOf('2021-12-10'),date.valueOf('2022-03-03'));
       System.assertEquals(date.valueOf('2021-12-31'), gelecektarih2);
   }

}