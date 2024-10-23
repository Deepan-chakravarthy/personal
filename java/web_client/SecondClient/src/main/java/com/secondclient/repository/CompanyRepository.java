package com.secondclient.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.secondclient.entity.Company;

@Repository
public interface CompanyRepository extends JpaRepository<Company, String> {

}
