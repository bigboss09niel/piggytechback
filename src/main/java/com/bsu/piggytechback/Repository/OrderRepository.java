package com.bsu.piggytechback.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bsu.piggytechback.Model.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
    
}
