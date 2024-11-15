/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author ET36
 */
public class UsuarioVO {
    private int id;
    private String nombre;
    private String contrasenia;
    private String tipo;


    public UsuarioVO(int id,String nombre,String contrasenia,String tipo){
        this.id = id;
        this.nombre = nombre;
        this.contrasenia = contrasenia;
        this.tipo = tipo;
    } 
    public UsuarioVO(String nombre,String contrasenia,String tipo){
        this.nombre = nombre;
        this.contrasenia = contrasenia;
        this.tipo = tipo;
    } 
    
    public void setId(int id){
        this.id = id;
    }
    public void setContrasenia(String contrasenia){
        this.contrasenia = contrasenia;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    public void setTipo(String tipo){
        this.tipo = tipo;
    }
    
    public int getId(){
        return id;
    }
    public String getContrasenia(){
        return contrasenia;
    }
    public String getNombre(){
        return nombre;
    }
    public String getTipo(){
       return tipo;
    }
        
}