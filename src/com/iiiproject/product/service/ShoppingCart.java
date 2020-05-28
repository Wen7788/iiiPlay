package com.iiiproject.product.service;

import java.util.*;

import com.iiiproject.product.model.OrderItem;



public class ShoppingCart {
	private int total; // 總計

	Map<Integer, OrderItem> map = new HashMap<Integer, OrderItem>();

	// 將購物車加入前判斷之前是否購買過這類商品
	// 如果沒有 創建一個新的 如果有取原先的 加上本次獲取的數量
	public void addOrderItem(OrderItem orderItem) {

		int pid = orderItem.getProduct().getProductId();

		if (map.containsKey(pid)) {

			OrderItem oldItem = map.get(pid);
			oldItem.setNum(oldItem.getNum() + orderItem.getNum());
		} else {
			map.put(pid, orderItem);
		}

	}
	
	
	public void removeOrderItem(int pid) {
		map.remove(pid);
		
	}
	
	public void update(OrderItem orderItem) {
		int pid = orderItem.getProduct().getProductId();

		if (map.containsKey(pid)) {
			OrderItem oldItem = map.get(pid);
			oldItem.setNum(orderItem.getNum());
		} 

	}
	
	
	public void clearOrderItem() {
		map.clear();
		
	}
	public int getTotal() {
		total=0;
		//得到map中所有的購物項
		Collection<OrderItem> values = map.values();
		
		//遍歷所有購物項
		for(OrderItem orderItem:values) {
			
			total+=orderItem.getSubtotal();
		}
		return total;
		
	}
	public Collection<OrderItem> getOrderItems() {
		
	return map.values();
	}
	
	
	public void setTotal(int total) {
		this.total = total;
	}
	public Map<Integer, OrderItem> getMap() {
		return map;
	}
	public void setMap(Map<Integer, OrderItem> map) {
		this.map = map;
	}
	
	
}
