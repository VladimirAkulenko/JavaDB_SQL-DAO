package ru.netology.application.repository;


import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.AllArgsConstructor;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@org.springframework.stereotype.Repository
@AllArgsConstructor
public class Repository {

    //@PersistenceContext
    private EntityManager manager;


    public List<String> getProductName(String name) {
        return manager.createQuery("select o.productName  from Order o " +
                        " join Customer c  on c.id = o.customer.id " +
                        " where lower(c.name) = lower(:name) ")
                .setParameter("name", name)
                .getResultList();
    }
}
