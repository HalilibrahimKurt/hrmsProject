package com.hrms.hrmsProject.entities.concretes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Inheritance(strategy = InheritanceType.JOINED)
/*@Inheritance(strategy = InheritanceType.JOINED)
 * Bu strateji kullanılarak hiyerarşideki her sınıf kendi tablosuna eşlenir. 
 * Tüm tablolarda tekrar tekrar görünen tek sütun, 
 * gerektiğinde onları birleştirmek için kullanılacak tanımlayıcıdır.
 */
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "password")
	private String password;
}
