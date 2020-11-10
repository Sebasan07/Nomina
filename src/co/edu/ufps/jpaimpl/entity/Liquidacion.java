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

@Table(name="liquidacion")
public class Liquidacion {

	@Id
	@Column(length=11, nullable=false)
	private Integer id;
	
	@Column(length=11)
	private Integer cod_modelo;
	
	@Column(length=10)
	private String cod_concepto;
	
	@Column(length=5)
	private String cod_empleado;
	
	@Column(length=11)
	private Integer num_proceso;
	
	@Column(length=10)
	private Double valor;
	
	@Column(nullable=true)
	private Date fecha;
}
