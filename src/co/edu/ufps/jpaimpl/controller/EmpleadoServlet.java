package co.edu.ufps.jpaimpl.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edu.ufps.jpaimpl.dao.EmpleadoDAO;
import co.edu.ufps.jpaimpl.dao.GenericDao;
import co.edu.ufps.jpaimpl.entity.Empleado;

/**
 * Servlet implementation class EmpleadoServlet
 */
@WebServlet("/EmpleadoServlet")
public class EmpleadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EmpleadoDAO empleadoDao;
	
	private GenericDao<Empleado> u;

	public EmpleadoServlet() {
		super();
	}

	public void init() {
		
		empleadoDao = new EmpleadoDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		System.out.println(action);

		try {
			switch (action) {
			case "new":
				showNewForm(request, response);
				break;

			case "register":
				System.out.println("a");
				insert(request, response);
				break;

			case "delete":
				delete(request, response);
				break;

			case "showedit":
				showEditForm(request, response);
				break;

			case "editar":
				update(request, response);
				break;

			default:
				System.out.println("c");
				list(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("registro.jsp");
		dispatcher.forward(request, response);
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ParseException, ServletException {
		String codigo = request.getParameter("codigo");
		String cedula = request.getParameter("cedula");
		String nombre = request.getParameter("nombre");
		
		String fechanac= request.getParameter("fecha_nacimiento");
		LocalDate fecha_nacimiento= LocalDate.parse(fechanac, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		
		String fechaing = request.getParameter("fecha_ingreso");
		LocalDate fecha_ingreso= LocalDate.parse(fechaing, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		
		String fecharet= request.getParameter("fecha_retiro");
		LocalDate fecha_retiro= LocalDate.parse(fecharet, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		
		Empleado empleado = new Empleado(codigo, cedula, nombre, fecha_nacimiento, fecha_ingreso, fecha_retiro);
		empleadoDao.insert(empleado);
		RequestDispatcher dispatcher = request.getRequestDispatcher("mostrar.jsp");
		dispatcher.forward(request, response);
	}

	private void list(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Empleado> list = empleadoDao.list();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("mostrar.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		String codigo = request.getParameter("codigo");
		Empleado empleado = empleadoDao.find(codigo);

		RequestDispatcher dispatcher = request.getRequestDispatcher("editar.jsp");
		request.setAttribute("empleado", empleado);
		dispatcher.forward(request, response);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ParseException, ServletException {
		String codigo = request.getParameter("codigo");
		String cedula = request.getParameter("cedula");
		String nombre = request.getParameter("nombre");
		
		String fechanac= request.getParameter("fecha_nacimiento");
		LocalDate fecha_nacimiento= LocalDate.parse(fechanac, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		
		String fechaing = request.getParameter("fecha_ingreso");
		LocalDate fecha_ingreso= LocalDate.parse(fechaing, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		
		String fecharet= request.getParameter("fecha_retiro");
		LocalDate fecha_retiro= LocalDate.parse(fecharet, DateTimeFormatter.ofPattern("dd/MM/yyyy"));
				
		Empleado empleado = empleadoDao.find(codigo);
		
		empleado.setCedula(cedula);
		empleado.setNombre(nombre);
		empleado.setFecha_nacimiento(fecha_nacimiento);
		empleado.setFecha_ingreso(fecha_ingreso);
		empleado.setFecha_retiro(fecha_retiro);
		
		empleadoDao.update(empleado);
		RequestDispatcher dispatcher = request.getRequestDispatcher("mostrar.jsp");
		dispatcher.forward(request, response);
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		String codigo= request.getParameter("codigo");
		Empleado empleado = empleadoDao.find(codigo);
		empleadoDao.delete(empleado);
		RequestDispatcher dispatcher = request.getRequestDispatcher("EmpleadoServlet?action=mostrar");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
