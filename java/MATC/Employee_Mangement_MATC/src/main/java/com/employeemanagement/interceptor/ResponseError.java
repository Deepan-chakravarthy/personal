package com.employeemanagement.interceptor;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class ResponseError implements Serializable {

	private static final long serialVersionUID = 1L;

	private String field;

	private String error;

	private String message;

}
