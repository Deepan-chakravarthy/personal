package com.employeemanagement.log;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthLogRepository extends JpaRepository<AuthLog, Integer> {

}
