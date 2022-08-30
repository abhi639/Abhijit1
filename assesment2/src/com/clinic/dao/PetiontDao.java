package com.clinic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.clinic.dbconnection.MydbConnection;
import com.clinic.petiont.Petiont;

public class PetiontDao {
     MydbConnection mydb=new MydbConnection();
     
	Connection con;
	PreparedStatement pre;

	public int savePetiont(Petiont emp) {
		int db = 3;
		con = mydb.getMyconnection();
		try {
			pre = con.prepareStatement("insert into petiont(pid,pname,group,page)values(?,?,?,?)");
			pre.setInt(1, emp.getPetion_id());
			pre.setString(2, emp.getPetion_name());
			pre.setString(3, emp.getBlood_group());
			pre.setInt(4, emp.getPetiont_age());
			pre.executeUpdate();
			db = 1;
		} catch (SQLException e) {
			
			
			e.printStackTrace();
		}

		return db;
	}

	public ArrayList<Petiont> viewEmp() {
		ArrayList<Petiont> data = new ArrayList<Petiont>();
		con = mydb.getMyconnection();
		try {
			
				pre = con.prepareStatement("select * from petiont");
			ResultSet set = pre.executeQuery();
			while (set.next()) {
				Petiont emp = new Petiont();
				emp.setPetion_id(set.getInt("pid"));
				emp.setPetion_name(set.getString("pname"));
				emp.setBlood_group(set.getString("group"));
				emp.setPetiont_age(set.getInt("page"));
				
				data.add(emp);
              
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return data;
	}
	
}
