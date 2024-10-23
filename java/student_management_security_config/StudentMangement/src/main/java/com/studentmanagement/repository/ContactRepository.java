package com.studentmanagement.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.studentmanagement.model.Contact;

@Repository
@Transactional
public interface ContactRepository extends JpaRepository<Contact, String> {

}
