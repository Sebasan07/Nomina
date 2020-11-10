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

@Table(name="tipoconcepto")
public class TipoConcepto {

	@Id
	@Column(length=11)
	private Integer id;
	
	@Column(length=50)
	private String descripcion;
	
}
