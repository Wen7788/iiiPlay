package com.iiiproject._00_backstage.dao;

import java.util.List;

import com.iiiproject.product.model.OrderBean;




public interface SearchOrderDao {

  List<OrderBean> SearchAllOrder();
  
  OrderBean querySearchOrder(Integer orderId);
}

