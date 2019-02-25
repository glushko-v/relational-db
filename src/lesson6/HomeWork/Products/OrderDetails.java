package lesson6.HomeWork.Products;

public class OrderDetails {
    private Orders order;
    private Products product;
    private int unitPrice;
    private int quantity;
    private int discount;

    public OrderDetails(Orders order, Products product, int unitPrice, int quantity, int discount) {
        this.order = order;
        this.product = product;
        this.unitPrice = unitPrice;
        this.quantity = quantity;
        this.discount = discount;
    }
}
