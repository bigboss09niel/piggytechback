package com.bsu.piggytechback.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bsu.piggytechback.Model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {
    
}
