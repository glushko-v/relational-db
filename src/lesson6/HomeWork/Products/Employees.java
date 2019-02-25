package lesson6.HomeWork.Products;

import java.awt.*;
import java.util.Date;

public class Employees {
    private long id;
    private String lastName;
    private String firstName;
    private String title;
    private String titleOfCourtesy;
    private Date birthDate;
    private Date hireDate;
    private String address;
    private String city;
    private String region;
    private int postalCode;
    private String Country;
    private int HomePhone;
    private int extension;
    private Image photo;
    private String notes;
    private String reportsTo;

    public Employees(long id, String lastName, String firstName, String title,
                     String titleOfCourtesy, Date birthDate, Date hireDate, String address,
                     String city, String region, int postalCode, String country, int homePhone,
                     int extension, Image photo, String notes, String reportsTo) {
        this.id = id;
        this.lastName = lastName;
        this.firstName = firstName;
        this.title = title;
        this.titleOfCourtesy = titleOfCourtesy;
        this.birthDate = birthDate;
        this.hireDate = hireDate;
        this.address = address;
        this.city = city;
        this.region = region;
        this.postalCode = postalCode;
        Country = country;
        HomePhone = homePhone;
        this.extension = extension;
        this.photo = photo;
        this.notes = notes;
        this.reportsTo = reportsTo;
    }
}
