package com.iiiproject._00_backstage.dao;

import com.iiiproject.product.model.OrderBean;

public interface PayStateDao {
	OrderBean updatepaydate(Integer orderId);
}
