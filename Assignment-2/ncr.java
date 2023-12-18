public class ncr{

       public static long factorial(int num) {
        if (num == 0 || num == 1) {
            return 1;
        }
        return num * factorial(num - 1);
    }

   public static long nCr(int n, int r) {
        if (r < 0 || r > n) {
            return 0; // Invalid input, return 0
        }

        long numerator = factorial(n);
        long denominator = factorial(r) * factorial(n - r);

        return numerator / denominator;
    }

    public static void main(String[] args) {
        int n = 10;
        int r = 3;

        long result = nCr(n, r);
        System.out.println("nCr(" + n + ", " + r + ") = " + result);
    }
}

 

 