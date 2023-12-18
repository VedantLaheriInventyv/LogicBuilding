import java.util.ArrayList;
public class FibonacciAndPrimes {
    static ArrayList<Integer> fibSeries = new ArrayList<>();
    static ArrayList<Integer> primes = new ArrayList<>();

    public static void main(String[] args) {
        int n = 1001; 
        fibonacciAndPrimes(n, 0, 1);

        System.out.println("Fibonacci Series: " + fibSeries);
        System.out.println("Prime Numbers: " + primes);
        ArrayList<Integer> primeDifferences = calculatePrimeDifferences(primes);
        System.out.println("Prime Differences: " + primeDifferences);

        int sum = 0;
        for (int i = 0; i < primeDifferences.size(); i++) {
            sum += primeDifferences.get(i);
        }
        System.out.println("Sum of Prime Differences: " + sum);
    }

    public static void fibonacciAndPrimes(int n, int current, int next) {
        if (n == 0) {
            return;
        }
        fibSeries.add(current);
        if (isPrime(current)) {
            primes.add(current);
        }
        fibonacciAndPrimes(n - 1, next, current + next);
    }
    public static ArrayList<Integer> calculatePrimeDifferences(ArrayList<Integer> primes) {
        ArrayList<Integer> primeDifferences = new ArrayList<>();
        for (int i = 1; i < primes.size(); i++) {
            primeDifferences.add(primes.get(i-1) - primes.get(i));
        }
        return primeDifferences;
    }

    public static boolean isPrime(int number) {
        if (number < 2) {
            return false; 
        }
        for (int i = 2; i <= Math.sqrt(number); i++) {
            if (number % i == 0) {
                return false; 
            }
        }

        return true; 
    }
}
