package lesson6.HomeWork.Products;

import java.awt.*;


public class Categories {
    private long id;
    private String categoryName;
    private String description;
    private Image image;

    public Categories(long id, String categoryName, String description, Image image) {
        this.id = id;
        this.categoryName = categoryName;
        this.description = description;
        this.image = image;
    }
}
