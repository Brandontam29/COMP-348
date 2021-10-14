public interface Printable {
    static void print(Printable[] array) {
        for (Printable printable : array) {
            System.out.println(printable);
        }
    };
}
