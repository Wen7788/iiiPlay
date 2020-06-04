package com.iiiproject._00_backstage.service;



import java.util.List;

import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.ProductBean;





public interface SearchOrderService {
	 List<OrderBean> SearchAllOrder();
	 List<ProductBean> SearchAllPdId();
	 OrderBean querySearchOrder(Integer orderId);
}


