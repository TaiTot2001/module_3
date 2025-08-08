package vn.codegym.productmanagement.service;

import vn.codegym.productmanagement.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private List<Product> products = new ArrayList<>();

    public ProductService() {
        products.add(new Product(1, "Gạo", 29000, "thực phẩm", "Gạo Hải Hậu"));
        products.add(new Product(2, "IP 15", 29000000, "màu đen", "Apple"));
    }

    public List<Product> findAll() {
        return products;
    }
    public void addProduct(Product product) {
        products.add(product);
    }
    public Product findById(int id) {
        for (Product prd : products) {
            if (prd.getId() == id) {
                return prd;
            }
        }
        return null;
    }
    public void updateProduct(Product product) {
        for(int i = 0; i<products.size(); i++){
            if(products.get(i).getId() == product.getId()){
                products.set(i, product);
                break;
            }
        }
    }
    public void deleteProduct(int id) {
        for(int i = 0; i<products.size(); i++){
            if(products.get(i).getId() == id){
                products.remove(i);
                break;
            }
        }
    }
}
