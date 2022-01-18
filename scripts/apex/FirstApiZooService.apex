//RestCallout.makeGetCallout();
calculatorServices.CalculatorImplPort calculator = new calculatorServices.CalculatorImplPort();
 Double num1 = 2.0;
 Double num2  = 3.0;
 Double result = calculator.doMultiply(num1, num2); 
 System.debug('Result of multiple is: '+result);
 
 //result = calculator.doDivide(num1, num2)