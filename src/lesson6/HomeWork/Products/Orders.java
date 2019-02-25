package lesson6.HomeWork.Products;

import java.util.Date;

public class Orders {
    private long id;
    private Customers customer;
    private Employees employee;
    private Date orderDate;
    private Date requiredDate;
    private Date shippedDate;
    private String shipVia;
    private double freight;
    private String shipName;
    private String shipAddress;
    private String shipCity;
    private String shipRegion;
    private int shipPostalCode;
    private String shipCountry;

    public Orders(long id, Customers customer, Employees employee, Date orderDate,
                  Date requiredDate, Date shippedDate, String shipVia, double freight,
                  String shipName, String shipAddress, String shipCity, String shipRegion,
                  int shipPostalCode, String shipCountry) {
        this.id = id;
        this.customer = customer;
        this.employee = employee;
        this.orderDate = orderDate;
        this.requiredDate = requiredDate;
        this.shippedDate = shippedDate;
        this.shipVia = shipVia;
        this.freight = freight;
        this.shipName = shipName;
        this.shipAddress = shipAddress;
        this.shipCity = shipCity;
        this.shipRegion = shipRegion;
        this.shipPostalCode = shipPostalCode;
        this.shipCountry = shipCountry;
    }
}
