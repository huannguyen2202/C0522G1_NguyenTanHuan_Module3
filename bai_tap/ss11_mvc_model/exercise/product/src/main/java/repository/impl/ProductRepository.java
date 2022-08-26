package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {


    private static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"Bút bi TL-027",4000,"kl 100gr","Thiên Long"));
        productList.add(new Product(2,"Hộp đựng bút",25000,"kl 200gr","Deli"));
        productList.add(new Product(3,"Thước kẻ",5000,"kl 150gr","Thiên Long"));
        productList.add(new Product(4,"Vở học sinh",8000,"kl 200gr","Hải Tiến"));
        productList.add(new Product(5,"Bút chì",7000,"kl 50gr","Deli"));
    }

    @Override
    public List<Product> findByAll() {
        return productList;
    }

    @Override
    public void save(Product product) {

    }

    @Override
    public void update(int id, Product product) {

    }
    @Override
    public void remove(int id) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public List<Product> findByName(String name) {
        return null;
    }

//    @Override
//    public List<Product> findByAll() {
//        return productList;
//    }
//
//    @Override
//    public void save(Product product) {
//        productList.
//
//    }
//
//    @Override
//    public void update(int id, Product product) {
//        productList.
//
//    }
//
//    @Override
//    public void remove(int id) {
//        productList.remove(id);
//
//    }
//
//    @Override
//    public Product findById(int id) {
//        return productList.get(id);
//    }
}
