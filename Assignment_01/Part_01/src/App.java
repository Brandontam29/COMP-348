
// --------------------------------------------------------------
// Assignment 1
// Part 1
// Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
// --------------------------------------------------------------
//

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;

public class App {
    public static void main(String[] args) throws Exception {

        Shape[] shapes = new Shape[8];

        // Populate shapes array
        try {
            BufferedReader br = new BufferedReader(
                    new FileReader("D:\\Code\\COMP348\\Assignment_01\\Part_01\\src\\shapes.txt"));
            int lines = 0;
            String s;
            while ((s = br.readLine()) != null) {
                if (s.charAt(0) == 'R') {
                    shapes[lines] = Rectangle.parse(s);
                    lines += 1;
                } else {
                    shapes[lines] = Circle.parse(s);
                    lines += 1;
                }
            }
            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Sort array
        Arrays.sort(shapes, new Comparator<Shape>() {

            public int compare(Shape o1, Shape o2) {
                return Double.compare(o1.getArea(), o2.getArea());
            }
        });

        Arrays.sort(shapes, new Comparator<Shape>() {

            public int compare(Shape o1, Shape o2) {
                return o1.getName().compareTo(o2.getName());
            }
        });

        // Print all shapes
        Printable.print(java.util.Arrays.copyOf(shapes, shapes.length, Printable[].class));

    }
}
