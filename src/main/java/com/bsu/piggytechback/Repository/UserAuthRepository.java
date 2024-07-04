package com.bsu.piggytechback.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bsu.piggytechback.Model.UserAuth;



public interface UserAuthRepository extends JpaRepository<UserAuth, Long>{
    Optional<UserAuth> findByUsername(String username);
    Optional<UserAuth> findByEmail(String email);
    Optional<UserAuth> findByUsernameOrEmail(String username, String email);

    Boolean existsByUsername(String username);
    Boolean existsByEmail(String email);
}
