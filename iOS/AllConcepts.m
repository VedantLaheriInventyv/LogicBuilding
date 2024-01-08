#import <Foundation/Foundation.h>
//function of finding max out of TwoNumbers
NSInteger maxOfTwoNumbers(NSInteger number1, NSInteger number2) {
    if (number1 >= number2) {
        return number1;
    } else {
        return number2;
    }
}

//calenderWithDays function declaration
NSDictionary *calenderWithDays(NSInteger days) {
    NSInteger weeks = days / 7;
    NSInteger months = days / 30;
    NSInteger years = days / 365;

    NSNumber *weeksNumber = [NSNumber numberWithInteger:weeks];
    NSNumber *monthsNumber = [NSNumber numberWithInteger:months];
    NSNumber *yearsNumber = [NSNumber numberWithInteger:years];

    return [NSDictionary dictionaryWithObjectsAndKeys:
            weeksNumber, @"weeks",
            monthsNumber, @"months",
            yearsNumber, @"years",
            nil];
}



int main(int argc, const char * argv[]) 
{
        NSInteger age = 25;
        float price = 10.5;
        char demo = 'A';
        NSString *name = @"vedant laheri"; 
        double largeDecimal = 12345.6789;
        int intval = 10;
        float floatval = 10.00f;
        double doubleval = 3.14579;
        BOOL adult = NO; 

        
        NSInteger sum = intval + 10;
        float difference = floatval - 2.50;
        NSInteger product = intval * 3;
        double division = doubleval / 2.0;
        NSInteger rem = intval % 4;
        BOOL isNotEqual = intval != 50;
        BOOL isGreaterThan = doubleval > 3.0;


        NSLog(@"age=%ld", (long)age);//typecasting
        NSLog(@"price=%f",price);
        NSLog(@"demo=%c", demo);
        NSLog(@"name=%@",name);
        NSLog(@"largeDecimal=%f", largeDecimal);
        NSLog(@"Sum: %ld", sum);
        NSLog(@"Difference: %f", difference);
        NSLog(@"Product: %ld", product);
        NSLog(@"Division: %f", division);
        NSLog(@"Remainder: %ld", rem);
        NSLog(@"isNotEqual: %d", isNotEqual);
        NSLog(@"isGreaterThan: %d", isGreaterThan);
        NSLog(@"Is Adult: %@", adult ? @"YES" : @"NO");
        
        //calenderWithDays function call
        NSInteger days = 365;
        NSDictionary *result = calenderWithDays(days);
        NSLog(@"No of weeks, months, and years from given days are: %@", result);
        NSInteger weeks = [[result objectForKey:@"weeks"] intValue];
        NSInteger months = [[result objectForKey:@"months"] intValue];
        NSInteger years = [[result objectForKey:@"years"] intValue];
        NSLog(@"Weeks: %ld, Months: %ld, Years: %ld", weeks, months, years);
        
       //calling maxOfTwoNumbers function
        NSInteger max= maxOfTwoNumbers(10, 20);
        NSLog(@"maxOfTwoNumbers:%d",max);

        
        return 0;
}
