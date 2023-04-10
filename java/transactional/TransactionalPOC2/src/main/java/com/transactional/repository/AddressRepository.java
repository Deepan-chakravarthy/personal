package com.transactional.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.transactional.model.Address;

@Transactional
@Repository
public interface AddressRepository extends JpaRepository<Address, String> {

}
