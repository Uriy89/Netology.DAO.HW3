package ru.netology.netology_bd_hw3.service;

import org.springframework.stereotype.Service;
import ru.netology.netology_bd_hw3.repo.ProductRepository;

import java.util.List;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<String> getProductName(String name) {
        return productRepository.getProductName1(name);
    }
}