package co.edu.ufps.jpaimpl.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

@Table(name="tercero")
public class Tercero {
	@Id
	@Column(name="cod_tercero")
	private Integer cod_tercero;
	
	@Column(length=50)
	private String descripcion;
	
}
