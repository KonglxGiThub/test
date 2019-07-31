package test.dao;

import test.model.Product;

public interface ProductMapper {
    Product selectByPrimaryKey(Integer did);
    Product selectById(Integer did);
    int addProduct(Product product);
    

}