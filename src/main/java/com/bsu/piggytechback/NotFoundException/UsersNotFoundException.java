package com.bsu.piggytechback.NotFoundException;

public class UsersNotFoundException extends RuntimeException {
    public UsersNotFoundException(Long id){
        super("Could not found user with " + id);
    }
}
