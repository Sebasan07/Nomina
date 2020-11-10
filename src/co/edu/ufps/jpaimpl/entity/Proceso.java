package co.edu.ufps.jpaimpl.entity;

import java.util.Date;

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

@Table(name="proceso")
public class Proceso {

	@Id
	@Column(length=10, unique=true, nullable=false)
	private Integer id;
	
	@Column(length=100)
	private String descripcion;
	
	@Column(nullable=true)
	private Date fecha_inicio;

	@Column(nullable=true)
	private Date fecha_fin;
}
