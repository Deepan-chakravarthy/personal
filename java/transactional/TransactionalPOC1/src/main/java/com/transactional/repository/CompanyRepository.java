package com.transactional.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.transactional.model.Company;

@Transactional(propagation = Propagation.REQUIRES_NEW)
@Repository
public interface CompanyRepository extends JpaRepository<Company, String> {

}