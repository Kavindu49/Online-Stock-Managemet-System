package item;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class itemdbutil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean validate(String supplierid, String suppliername) {

		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from products where supplierid='" + supplierid + "' and suppliername='"
					+ suppliername + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<Item> getItem(String userName) {

		ArrayList<Item> item = new ArrayList<>();

		try {

			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from products where suppliername='" + userName + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int itemid = rs.getInt(1);
				String supplierid = rs.getString(2);
				String suppliername = rs.getString(3);
				String item_name = rs.getString(4);
				String item_type = rs.getString(5);
				String item_quantity = rs.getString(6);
				String item_price = rs.getString(7);
				String discount = rs.getString(8);
				String discription = rs.getString(9);

				Item it = new Item(itemid, supplierid, suppliername, item_name, item_type, item_quantity, item_price,discount, discription);
				item.add(it);
			}

		} catch (Exception e) {

		}

		return item;
	}

	public static boolean iteminsert(String supplierid, String suppliername, String item_name, String item_type,
			String item_quantity, String item_price, String discount, String discription) {

		boolean isSuccess = false;

		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "insert into products values (0,'" + supplierid + "','" + suppliername + "','" + item_name
					+ "','" + item_type + "','" + item_quantity + "','" + item_price + "','" + discount + "','"
					+ discription + "')";
			if(supplierid.contains("SID-")) {
				int rs = stmt.executeUpdate(sql);
				
					
				if (rs > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean updateitem(String itemid, String supplierid, String suppliername, String item_name,
			String item_type, String item_quantity, String item_price, String discount, String discription) {

		try {

			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "update products set item_name='" + item_name +"',item_type='" + item_type + "',item_quantity='" + item_quantity + "',item_price='" + item_price
					+ "',discount='" + discount + "',discription ='" + discription +"' where itemid='" + itemid + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			}

			else {
				isSuccess = false;
			}

		} catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static List<Item> getItemDetails(String Itemid) {
		int converteditemid = Integer.parseInt(Itemid);
		ArrayList<Item> it = new ArrayList<>();

		
		try {
			
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from products where itemid='" + converteditemid + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int itemid = rs.getInt(1);
				String supplierid = rs.getNString(2);
				String suppliername = rs.getNString(3);
				String item_name = rs.getString(4);
				String item_type = rs.getString(5);
				String item_quantity = rs.getString(6);
				String item_price = rs.getString(7);
				String discount = rs.getString(8);
				String discription = rs.getString(9);

				Item c = new Item(itemid, supplierid, suppliername, item_name, item_type, item_quantity, item_price,
						discount, discription);
				it.add(c);
			}

		} catch (NumberFormatException e) {
			e.printStackTrace();
			// Handle the case where id is not a valid integer (e.g., throw a custom
			// exception with an error message)
			throw new IllegalArgumentException("Invalid ID format. Please provide a valid integer ID.");
		} catch (Exception e) {
			e.printStackTrace();
			// Handle other exceptions if necessary
		}
		return it;
	}

	public static boolean deleteItem(String itemid) {

		int convitemid = Integer.parseInt(itemid);

		try {

			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "delete from products where itemid='" + convitemid + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error");
		}

		return isSuccess;
	}

}
