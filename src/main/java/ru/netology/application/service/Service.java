package ru.netology.application.service;

import ru.netology.application.repository.Repository;

import java.util.List;

@org.springframework.stereotype.Service
public class Service {
    private final Repository repository;

    public Service(Repository repository) {
        this.repository = repository;
    }

    public List<String> getProducts(String name) {
        return repository.getProductName(name);
    }
}
