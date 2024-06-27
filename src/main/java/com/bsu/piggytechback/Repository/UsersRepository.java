package com.bsu.piggytechback.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bsu.piggytechback.Model.Users;

public interface UsersRepository extends JpaRepository<Users, Long> {
    
}
