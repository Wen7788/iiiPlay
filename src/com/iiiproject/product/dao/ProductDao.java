   package com.iiiproject.product.dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iiiproject.product.model.ProductBean;





@Repository("productDao")
public class ProductDao implements IProductDao {
	
	
	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	
	
	@Override
	public ProductBean select(int productId) {
		Session session = sessionFactory.getCurrentSession();
		return  session.get(ProductBean.class,productId);
		
	}
	
	@Override
	public List<ProductBean> selecttype(String type) {
		Session session = sessionFactory.getCurrentSession();
		Query<ProductBean> querytype =session.createQuery("from ProductBean where category=?0 or companyId=?1", ProductBean.class);
		querytype.setParameter(0, type);
		querytype.setParameter(1, type);		
		return querytype.list();
	}

	@Override
	public ProductBean insert(ProductBean productBean) {
		Session session = sessionFactory.getCurrentSession();
		ProductBean pdbean = session.get(ProductBean.class,productBean.getProductId());
		
		if (pdbean==null) {
			session.save(productBean);
			return productBean;
		}
		return null;
	}

	@Override
	public Boolean delete(int productId) {
		Session session = sessionFactory.getCurrentSession();
		ProductBean pdBean = session.get(ProductBean.class, productId);
		if(pdBean!= null) {
			session.delete(pdBean);
			return true;
		}
		return false;
	}



	@Override
	public ProductBean update(int productId, String productNo, String productName, int price) {
		Session session = sessionFactory.getCurrentSession();
		ProductBean pdBean = session.get(ProductBean.class, productId);
		if (pdBean != null) {
			pdBean.setProductNo(productNo);
			pdBean.setProductName(productName);
			pdBean.setPrice(price);
		}
		return pdBean;
		
	}

	@Override
	public List<ProductBean> selectAll() {
		Session session = sessionFactory.getCurrentSession();
		Query<ProductBean> query = session.createQuery("from ProductBean", ProductBean.class);
		return query.list();
	}
	@Override
	public byte[] loadimage(int ProductId) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(ProductBean.class,ProductId).getPdimg();
		
	}
	@Override
	public List<ProductBean> query(String num ,String content) {
		Session session = sessionFactory.getCurrentSession();
		Query<ProductBean> query =session.createQuery("from ProductBean where companyId=?0 and category=?1", ProductBean.class);
		query.setParameter(0, num);
		query.setParameter(1, content);		
		return query.list();
		
	}
	@Override
	public List<ProductBean> newpd(){
		Session session = sessionFactory.getCurrentSession();
		Query<ProductBean> query =session.createQuery("from ProductBean order by pdate desc ", ProductBean.class);
		query.setFirstResult(0);
		query.setMaxResults(5);
		return query.list();
		
	}
	@Override
	public List<ProductBean> type(String type) {
		Session session = sessionFactory.getCurrentSession();
		Query<ProductBean> query = session.createQuery("from ProductBean where category=?0", ProductBean.class);
		query.setParameter(0,type);
		return query.list();
	}
	@Override
	public List<ProductBean> category(String com) {
		Session session = sessionFactory.getCurrentSession();
		Query<ProductBean> query = session.createQuery("from ProductBean where companyId=?0", ProductBean.class);
		query.setParameter(0,  com);
		return query.list();
	}
	
	
	@Override
	public Long allpdcount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT COUNT(*) FROM ProductBean ");
		return (Long)query.uniqueResult();
	}
	
	
	@Override
	public List<ProductBean> queryprice(int price1 ,int price2) {
		Session session = sessionFactory.getCurrentSession();
		Query<ProductBean> query =session.createQuery("from ProductBean where price between ?1 and ?2 ", ProductBean.class);
		query.setParameter(1, price1);
		query.setParameter(2, price2);		
		return query.list();
		
	}
	
}
