package com.iiiproject._00_backstage.dao;

import java.util.List;

import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.ProductBean;




public interface SearchOrderDao {

  List<OrderBean> SearchAllOrder();
  
  List<ProductBean> SearchAllPdId();
  
//  ProductBean querypdname(Integer pdId);
  
  OrderBean querySearchOrder(Integer orderId);
  
}

