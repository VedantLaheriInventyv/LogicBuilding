import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Arrays;


public class Assignment1{

    public static void main(String[] args) {
        int[] arr1 = {1, 2, 3, 4, 5};
        function1(arr1);
    }

    public static void function1(int[] arr) {
        int firstElement = arr[0];
        int[] remainingElements = new int[arr.length - 1];

        for (int i = 1; i < arr.length; i++)
            remainingElements[i - 1] = arr[i];

        function2(firstElement, remainingElements);
    }

    public static void function2(int firstElement, int[] remainingElements) {
        int[] arr2 = {6, 7, 8, 9};
        int[] newArr = new int[arr2.length + remainingElements.length + 1];

        newArr[0] = firstElement;

        for (int i = 0; i < arr2.length; i++) {
            newArr[i + 1] = arr2[i];
        }

        for (int i = 0; i < remainingElements.length; i++) {
            newArr[arr2.length + 1 + i] = remainingElements[i];
        }

        System.out.println("Modified Array: " + Arrays.toString(newArr));

        int sum = 0;
        for (int num : arr2) {
            sum += num;
        }

        try {
            if (sum > 10) {
                String apiData = fetchImages(sum);
                extractAndPrintImageUrls(apiData);
            } else {
                System.out.println("Sum is less than or equal to 30. Skipping image fetching.");
            }
        } catch (Exception e) {
            System.out.println("Error fetching images: " + e.getMessage());
        }
    }


    public static String fetchImages(int numberOfImages) throws Exception {
        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create("https://jsonplaceholder.typicode.com/photos?_limit=" + numberOfImages))
                .build();

        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

        if (response.statusCode() == 200) {
            return response.body();
        } else {
            throw new Exception("Failed to fetch data. Status code: " + response.statusCode());
        }
    }
    public static void extractAndPrintImageUrls(String apiData) {
        String[] parts = apiData.split("\"url\"\\s*:\\s*\"");

        for (int i = 1; i < parts.length; i++) {
            String imageUrl = parts[i].split("\"")[0];
            System.out.println("Image URL: " + imageUrl);
        }
    }
}