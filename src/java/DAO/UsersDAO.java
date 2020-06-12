/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Conexion;
import Models.Users;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

/**
 *
 * @author DIEGO
 */
public class UsersDAO {

    private Connection Connexion;
    private String Validate = "SELECT Nombres,Apellidos,Telefono,IdUsuario FROM usuarios WHERE Correo = ? AND Contrasena = ?";

    public UsersDAO() {
        Connexion = Conexion.GetConnection();
    }

    public Users Validate(Users user) {
        try {
            PreparedStatement stmt = Connexion.prepareStatement(Validate);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                ResultSetMetaData resultColumns = result.getMetaData();
                Users userResult = new Users();
                userResult.setName(result.getString("Nombres"));
                userResult.setLastName(result.getString("Apellidos"));
                userResult.setPhone(result.getString("Telefono"));
                userResult.setIdUser(result.getInt("IdUsuario"));
                return userResult;
            }else{
                return null;
            }
        } catch (Exception ex) {
            return null;
        }
    }

}
