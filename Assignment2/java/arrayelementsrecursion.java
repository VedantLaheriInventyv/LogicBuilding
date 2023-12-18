import java.util.ArrayList;
public class arrayelementsrecursion {
    public static void storeAndDisplayElements(ArrayList<Integer> array, int index, ArrayList<Integer> storage) {
        if (index == array.size()) {
            System.out.println("\t Stored and Displayed Elements: " + storage);
            return;
        }
        storage.add(array.get(index));
        System.out.print(array.get(index));
        storeAndDisplayElements(array, index + 1, storage);
    }

  public static void main(String[] args) {
        ArrayList<Integer> myArray = new ArrayList<>();
        myArray.add(1);
        myArray.add(2);
        myArray.add(3);
        myArray.add(4);
        myArray.add(5);

        ArrayList<Integer> storedElements = new ArrayList<>();
        storeAndDisplayElements(myArray, 0, storedElements);
    }
}