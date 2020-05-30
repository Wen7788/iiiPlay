package com.iiiproject._00_backstage.service;



import java.util.List;

import com.iiiproject.product.model.OrderBean;





public interface SearchOrderService {
	 List<OrderBean> SearchAllOrder();
	
	 OrderBean querySearchOrder(Integer orderId);
}


