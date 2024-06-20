package item;

public class Item {

    private int itemid;
    private String supplierid;
    private String suppliername;
    private String item_name;
    private String item_type;
    private String item_quantity;
    private String item_price;
    private String discount;
    private String discription;
    
    public Item(int itemid,String supplierid, String suppliername, String item_name, String item_type, String item_quantity, 
    		String item_price, String discount, String discription) {
	this.itemid = itemid;
    this.supplierid =  supplierid;
    this.suppliername = suppliername;
	this.item_name = item_name;
	this.item_type = item_type;
	this.item_quantity = item_quantity;
	this.item_price = item_price;
	this.discount = discount;
	this.discription = discription;
	
    }

	public int getItemid() {
		return itemid;
	}
	
	
	public String getSupplierid() {
		return supplierid;
	}
	
	public String getSuppliername() {
		return suppliername;
	}

	

	public String getItem_name() {
		return item_name;
	}



	public String getItem_type() {
		return item_type;
	}

	

	public String getItem_quantity() {
		return item_quantity;
	}

	
	public String getItem_price() {
		return item_price;
	}


	public String getDiscount() {
		return discount;
	}

	

	public String getDiscription() {
		return discription;
	}




   
}
