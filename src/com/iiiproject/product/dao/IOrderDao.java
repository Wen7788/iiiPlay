package com.iiiproject.product.dao;



import java.util.List;

import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.OrderItemBean;
import com.iiiproject.product.model.ProductBean;




public interface IOrderDao {
	public void saveorder(OrderBean order) ;
	public void saveorderItem(OrderItemBean Item);
	List<OrderBean> findorder(String uid);
	List<OrderItemBean> findorderdetail(Integer orderId);
}
