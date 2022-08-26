package model;

public class Product {
    private int id;
    private String productName;
    private int productPrice;
    private String statusProduct;
    private String producer;

    public Product() {
    }

    public Product(int id, String productName, int productPrice, String statusProduct, String producer) {
        this.id = id;
        this.productName = productName;
        this.productPrice = productPrice;
        this.statusProduct = statusProduct;
        this.producer = producer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public String getStatusProduct() {
        return statusProduct;
    }

    public void setStatusProduct(String statusProduct) {
        this.statusProduct = statusProduct;
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer;
    }
}
