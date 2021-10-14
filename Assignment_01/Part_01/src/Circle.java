public class Circle extends PrintableObject implements Shape {
    double radius;

    // Constructors
    public Circle() {
        this.radius = 1d;
    }

    public Circle(double radius) {
        this.radius = radius;
    }

    // Methods
    public String toString() {
        return getName() + " " + radius;
    }

    static Circle parse(String str) {
        String[] tokens = str.split(",");

        return new Circle(Double.parseDouble(tokens[1]));
    }

    public double getPerimeter() {
        return Math.PI * 2 * this.radius;
    }

    public double getArea() {
        return Math.PI * Math.pow(this.radius, 2);
    }

    // Getters & Setters

    public String getName() {
        return this.getClass().getSimpleName().toUpperCase();
    }

    public double getRadius() {
        return this.radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

}
