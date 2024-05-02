/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author rynaa
 */
public class StudentDAO {
    
    private String jdbcURL = "jdbc:mysql://localhost:3306/test";
    private String username = "";
    private String password = "";
    
    private static final String INSERT_STUDENT = "INSERT INTO student(studname, studStatus) VALUES (?,?);";
    private static final String SELECT_ALL_STUDENTS = "SELECT * FROM student;";
    private static final String SELECT_STUDENT_BY_STUDENTID = "SELECT * FROM student WHERE id = ?;";
    private static final String UPDATE_STUDENT = "UPDATE student set studname = ?, studstatus = ?, WHERE id = ?;";
    private static final String DELETE_STUDENT = "DELETE from student WHERE id = ?;";
    
    protected Connection getConnection(){
        Connection connection = null;
        
        try{
            Class.forName("com.mysql")
            
        }
    }
  
}
