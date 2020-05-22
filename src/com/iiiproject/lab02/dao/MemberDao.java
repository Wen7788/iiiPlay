package com.iiiproject.lab02.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iiiproject.lab02.dao.IMemberDao;
import com.iiiproject.lab02.model.MemberBean;

//實作介面或繼承父類別,程式使用時直接寫父類別/介面名稱
@Repository (value = "memberDao")
public class MemberDao implements IMemberDao {
	@Autowired
	private SessionFactory factory;

	public MemberDao() {

	}



	@Override
	public boolean isDup(String id) {

		try {
			Session session=factory.getCurrentSession();
			String hql = "from MemberBean where id = :id";

			Query<MemberBean> query = session.createQuery(hql, MemberBean.class);
			query.setParameter("id", id);
			MemberBean resultUser = query.uniqueResult();
			if (resultUser != null) {
				return true;
			}
			return false;

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@Override
	public int insert(MemberBean mb) {
		int count = 0;
		try {
			Session session=factory.getCurrentSession();
			session.save(mb);

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return count;
	}

//	@Override
//	public List<MemberBean> getAllMembers() {
//		List<MemberBean> list = new ArrayList<>();
//		try {
//			InitialContext context = new InitialContext();
//			DataSource ds = (DataSource) context.lookup(resource);
//			
//			String sql = "SELECT * FROM Members";
//			try (
//				Connection con = ds.getConnection(); 
//				PreparedStatement pstmt = con.prepareStatement(sql);
//				ResultSet rs = pstmt.executeQuery();	
//			) {
//				while (rs.next()) {
//					MemberBean mb = new MemberBean(
//							rs.getInt(1),
//							rs.getString(2), 
//							rs.getString(3), 
//							rs.getString(4)
//					);
//					list.add(mb);
//				}
//			} catch (Exception ex) {
//				ex.printStackTrace();
//			}
//		} catch (Exception ex) {
//			ex.printStackTrace();
//		}
//		return list;
//	}
//
	@Override
	public MemberBean select(String id) {
		MemberBean mb=null;
try {		
			
	        System.out.println("dao:"+id);
			
	        String hql = "from MemberBean where id = :id";
			Session session=factory.getCurrentSession();
			Query<MemberBean> query= session.createQuery(hql,MemberBean.class);
			query.setParameter("id", id);
			mb = query.uniqueResult();
			if(mb!=null) {
				System.out.println("資料庫有抓到");
			}else {
				System.out.println("資料庫沒抓到物件");
			}
			
			
			
		 
			}catch (Exception ex) {
				ex.printStackTrace();
		
			} return mb;
	}


	@Override
	public int deleteMember(String id) {
		
		int count = 0;
		try {
			Session session=factory.getCurrentSession();
			String hql = "delete from MemberBean where id=:id";
			Query<MemberBean>  query = session.createQuery(hql);
			query.setParameter("id", id);
			query.executeUpdate();
			count=1;
			
			
			} catch (Exception ex) {
			ex.printStackTrace();
		}
		return count;
	}

	@Override
	public int updateMember(MemberBean mb) {
		int count = 0;
		try {
			Session session=factory.getCurrentSession();
			String hql = "from MemberBean where id = :id";
			Query<MemberBean> query= session.createQuery(hql,MemberBean.class);
			query.setParameter("id", mb.getId());
			MemberBean result = query.uniqueResult();
			if(result!=null) {
				result.setName(mb.getName());
				result.setPassword(mb.getPassword());
				result.setEmail(mb.getEmail());
				result.setAge(mb.getAge());
				result.setGames(mb.getGames());
				result.setGender(mb.getGender());
				
				session.update(result);
				count=1;
			}
			
		
					
			
		} catch (Exception ex) {
			ex.printStackTrace();
			
		}
		return count;
	}



	@Override
	public MemberBean findByEmail(String email) {
		MemberBean mb=null;
		try {		
					
			        System.out.println("dao:"+email);
					
			        String hql = "from MemberBean where email = :email";
					Session session=factory.getCurrentSession();
					Query<MemberBean> query= session.createQuery(hql,MemberBean.class);
					query.setParameter("email", email);
					mb = query.uniqueResult();
					if(mb!=null) {
						System.out.println("資料庫有抓到");
					}else {
						System.out.println("資料庫沒抓到物件");
					}
					
					
					
				 
					}catch (Exception ex) {
						ex.printStackTrace();
				
					} return mb;
			}
}
