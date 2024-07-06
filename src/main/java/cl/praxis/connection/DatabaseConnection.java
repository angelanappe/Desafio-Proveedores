package cl.praxis.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	private static Connection connection = null;
	
	private DatabaseConnection() {
		
	}
	
	public static Connection getConnection() throws SQLException {
		if(connection == null || connection.isClosed()) {
			try {
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/desafio_capa_acceso_datos","", "");
			} catch (ClassNotFoundException | SQLException e) {
				throw new SQLException("No se pudo conectar a la base de datos.", e);
			}
		}
		
		return connection;
	}

}
