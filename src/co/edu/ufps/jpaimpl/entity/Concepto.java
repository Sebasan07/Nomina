package co.edu.ufps.jpaimpl.entity;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

@Table(name="concepto")
public class Concepto {

	@Id
	@Column(length=10, unique=true, nullable=false)
	private String cod_concepto;
	
	@Column(length=50)
	private String descripcion;
	
	@Column(length=11)
	private Integer tipo;
	
	@Column(length=20)
	private String cod_tercero;
}
