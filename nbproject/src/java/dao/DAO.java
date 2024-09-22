/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Movie;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author pc
 */
public class DAO {
     Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
     public List<Movie> getAllMovie() {
        List<Movie> list = new ArrayList<>();
        String query = "select * from movie";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query); //ném câu lenh sang sql
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Movie(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                         rs.getString(5),
                         rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDate(12),
                rs.getInt(13)
                ));
                
            }
        } catch (Exception e) {
        }
        return list;
    }
      public List<Movie> getMovieByAID(String aid) {
        List<Movie> list = new ArrayList<>();
        String query = "select * from Movie where activeID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query); //ném câu lenh sang sql
            ps.setString(1, aid);
            rs = ps.executeQuery();
             while (rs.next()) {
                list.add(new Movie(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                         rs.getString(5),
                         rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDate(12),
                        rs.getInt(13)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }
      public Movie getMovieById(String id) {
        String query = "select * from Movie where movie_id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query); //ném câu lenh sang sql
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Movie(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                         rs.getString(5),
                         rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDate(12),
                        rs.getInt(13)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }
}
