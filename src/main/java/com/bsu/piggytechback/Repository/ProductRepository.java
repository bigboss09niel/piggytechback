package com.bsu.piggytechback.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bsu.piggytechback.Model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
    
}
