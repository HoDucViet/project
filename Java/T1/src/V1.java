import java.util.Scanner;

public class V1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Nhập một số nguyên dương: ");
        int number = scanner.nextInt();

        int sum = calculateSum(number);
        System.out.println("Tổng các số từ 1 đến " + number + " là: " + sum);
        
        scanner.close();
    }

    public static int calculateSum(int number) {
        int sum = 0;
        for (int i = 1; i <= number; i++) {
            sum += i;
        }
        return sum;
    }
}
