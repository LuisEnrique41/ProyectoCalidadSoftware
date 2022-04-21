/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cad;

import JavaBeans.Producto;
import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author user
 */
public class ProductoCad {
    
    public static boolean registrarProducto(Producto p){
        try {
            String sql = "{call sp_regitrarProducto(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)};";
            Connection c = Conexion.conectar();
            CallableStatement sentencia = (CallableStatement) c.prepareCall(sql);
            sentencia.setString(1, p.getNombre());
            sentencia.setFloat(2, p.getPrecio());
            sentencia.setFloat(3, p.getPrecionuevo());
            
            ResultSet resultado = sentencia.executeQuery();
            ArrayList<Categoria> lista = new ArrayList<>();
            while (resultado.next()) {
                Categoria cat = new Categoria();
                cat.setCodigo(resultado.getInt("codigo"));
                cat.setNombre(resultado.getString("nombre"));
                lista.add(cat);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
}
