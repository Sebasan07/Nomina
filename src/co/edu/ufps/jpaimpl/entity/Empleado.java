package co.edu.ufps.jpaimpl.entity;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

@Table(name = "empleado")
@NamedQuery(name = "Empleado.findAll", query = "SELECT u FROM Empleado u")
public class Empleado {

	@Id
	@Column(length = 5, unique = true, nullable = false)
	private String codigo;

	@Column(length = 15)
	private String cedula;

	@Column(length = 50)
	private String nombre;

	@Column(nullable = true)
	private LocalDate fecha_nacimiento;

	@Column(nullable = true)
	private LocalDate fecha_ingreso;

	@Column(nullable = true)
	private LocalDate fecha_retiro;

	public Empleado() {

	}

	public Empleado(String codigo, String cedula, String nombre, LocalDate fecha_nacimiento, LocalDate fecha_ingreso,
			LocalDate fecha_retiro) {
		super();
		this.codigo = codigo;
		this.cedula = cedula;
		this.nombre = nombre;
		this.fecha_nacimiento = fecha_nacimiento;
		this.fecha_ingreso = fecha_ingreso;
		this.fecha_retiro = fecha_retiro;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public LocalDate getFecha_nacimiento() {
		return fecha_nacimiento;
	}

	public void setFecha_nacimiento(LocalDate fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}

	public LocalDate getFecha_ingreso() {
		return fecha_ingreso;
	}

	public void setFecha_ingreso(LocalDate fecha_ingreso) {
		this.fecha_ingreso = fecha_ingreso;
	}

	public LocalDate getFecha_retiro() {
		return fecha_retiro;
	}

	public void setFecha_retiro(LocalDate fecha_retiro) {
		this.fecha_retiro = fecha_retiro;
	}

}
