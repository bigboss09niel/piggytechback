package com.bsu.piggytechback.ExceptionHandler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.bsu.piggytechback.NotFoundException.UsersNotFoundException;

@RestControllerAdvice
public class UsersExceptionHandler {

    @ExceptionHandler(UsersNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String usersNotFoundHandler(UsersNotFoundException e){
        return e.getMessage();
    }
}
