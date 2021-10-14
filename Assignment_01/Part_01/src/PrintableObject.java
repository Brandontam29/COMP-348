public abstract class PrintableObject implements NamedObject, Printable {
    public String toString() {
        return this.getName();
    }

    public void print() {
        System.out.println(toString());
    }
}
