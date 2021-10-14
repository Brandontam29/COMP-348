public class Rectangle extends PrintableObject implements Shape {

    double width;
    double height;

    // Constructors
    public Rectangle() {
        this.width = 1d;
        this.height = 1d;
    }

    public Rectangle(double width, double height) {

        this.width = width;
        this.height = height;
    }

    // Methods
    static Rectangle parse(String str) {
        String[] tokens = str.split(",");

        return new Rectangle(Double.parseDouble(tokens[1]), Double.parseDouble(tokens[2]));
    }

    public String toString() {
        return getName() + " " + this.width + " " + this.height;
    }

    public double getPerimeter() {
        return 2 * (this.width + this.height);
    }

    public double getArea() {
        return this.width * this.height;
    }

    // Getters & Setters
    public String getName() {
        return this.getClass().getSimpleName();
    }

    public double getWidth() {
        return this.width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getHeight() {
        return this.height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

}
