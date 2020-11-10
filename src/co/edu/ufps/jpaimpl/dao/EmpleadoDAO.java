package co.edu.ufps.jpaimpl.dao;

import co.edu.ufps.jpaimpl.entity.Empleado;
import co.edu.ufps.jpaimpl.util.Conexion;

public class EmpleadoDAO extends Conexion<Empleado> implements GenericDao<Empleado>{

	public EmpleadoDAO(){
		super(Empleado.class);
	}
}
