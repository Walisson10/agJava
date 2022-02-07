package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {
	/** modulo de conexão**/
	//parametros de conexao//
	
	private String driver ="com.mysql.cj.jdbc.Driver";
	private String url ="jdbc:mysql://127.0.0.1:3306/tb_agencia?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password="123456";
	
	//metodo de conexao//
	
	private Connection conectar() {
		Connection con=null; 
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
	}
	
	/** CRUD CREATE **/
	public void inserirPromocao(JavaBeans promocao) {
		String create ="insert into viagem (nome,vlatu,vlanti) values(?,?,?)";
		try {
			
			Connection con = conectar();
			
			PreparedStatement pst = con.prepareStatement(create);
			
			pst.setString(1, promocao.getNome());
			pst.setString(2, promocao.getVlatu());
			pst.setString(3,promocao.getVlanti());
			
			pst.executeUpdate();
			
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
	}
	
	/** CRUD READ **/
	public ArrayList<JavaBeans> listarPromocoes(){
		ArrayList<JavaBeans> promo = new ArrayList<>();
		String read ="select * from  viagem order by nome";
		
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				 String id=rs.getString(1);
				 String nome=rs.getString(2);
				 String vlatu=rs.getString(3);
				 String vlanti=rs.getString(4);
				
				 promo.add(new JavaBeans(id,nome,vlatu,vlanti));
			}
			con.close();
			return promo;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	/** CRUD UPDATE **/
	
	public void selecionarPromocao(JavaBeans promocao) {
		String read2 = "select * from viagem where id=?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(read2);
			pst.setString(1, promocao.getId());
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				promocao.setId(rs.getString(1));
				promocao.setNome(rs.getString(2));
				promocao.setVlanti(rs.getString(3));
				promocao.setVlatu(rs.getString(4));
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public void alterarPromocao(JavaBeans promocao) {
		String update = "update viagem set nome=?,vlatu=?,vlanti=? where id=?";
		try {
			Connection con = conectar();
			PreparedStatement pst = con.prepareStatement(update);
			pst.setString(1, promocao.getNome());
			pst.setString(2, promocao.getVlatu());
			pst.setString(3, promocao.getVlanti());
			pst.setString(4, promocao.getId());
			pst.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	/** CRUD DELETE **/
	
	public void deletarPromocao(JavaBeans promocao) {
		String delete = "delete from viagem where id=?";
		try {
			Connection con = conectar();
			PreparedStatement pst =con.prepareStatement(delete);
			pst.setString(1, promocao.getId());
			pst.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
