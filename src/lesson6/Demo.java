package lesson6;

public class Demo {
    public static void main(String[] args) {
        Author author = new Author(105, "Test");
        Article article = new Article(1, "TestHeader", "SomeText", author);
    }
}
