package com.studentmanagement.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import com.studentmanagement.model.Student;

@Repository
public class CustomRepo implements CustomRepository{

	  EntityManager em;
	  
	@Override
	public List<Student> findStudentByFirstNameAndLastName(String firstName, String lastName) {
		CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Student> cq = cb.createQuery(Student.class);

        Root<Student> student = cq.from(Student.class);
        Predicate firstNamePredicate = cb.equal(student.get("firstName"), firstName);
        Predicate lastNamePredicate = cb.equal(student.get("lastName"), lastName );
        cq.where(firstNamePredicate, lastNamePredicate);

        TypedQuery<Student> query = em.createQuery(cq);
        return query.getResultList();
	}
   
}
