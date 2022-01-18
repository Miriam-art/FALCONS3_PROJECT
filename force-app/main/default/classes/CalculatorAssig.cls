public class CalculatorAssig{
    public decimal addition(decimal a, decimal b){
        return a + b;
    }

    public decimal subtraction(decimal i, decimal j){
        return i - j;
    }

    public decimal multiplication(decimal f, decimal e){
        return f * e;
    }

    public decimal division(decimal c, decimal d){
        return c / d;
    }

    public decimal addition(list<decimal> anyNumber){
        decimal sum = 0.0;
        for (decimal eachElement : anyNumber){
            sum += eachElement;
        }
        return sum;
    }
}