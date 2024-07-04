package com.bsu.piggytechback.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bsu.piggytechback.Model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(String name);
}
