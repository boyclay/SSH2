package dao.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import dao.UserDao;
import entity.Books;
import entity.User;

public class UserDaoImpl implements UserDao {

	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//�û���¼��֤
	@SuppressWarnings("unchecked")
	public boolean login(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		User user1 = new User();
		user1.setId(2);
		session.delete(user1);
		tx.commit();
		session.close();
//		String hql = " from User u where u.userName= ? and u.passWord = ? " ;
//		Query query =  session.createQuery(hql);
//		query.setParameter(0, user.getUserName());
//		query.setParameter(1, user.getPassWord());
//		List<User> list = query.list();
//		if(list.size()>0) {
//			return true;
//		}else {
//			return false;
//		}
		return true;
	}
	
//	public boolean login(User user) throws Exception {
//		Session session = sessionFactory.openSession();
//		Transaction tx = null;
//		Publishers publishers = new Publishers();
//		publishers.setPublisherId("654321");
//		publishers.setName("963");
//		Books books1 = new Books();
//		books1.setId(10202);
//		books1.setTitle("c#");
//		books1.setAnthor("999");
//		Books books2 = new Books();
//		books2.setId(10204);
//		books2.setTitle("c");
//		books2.setAnthor("888");
//		publishers.getBks().add(books1);
//		publishers.getBks().add(books2);
//		try {
//			tx = session.beginTransaction();
//			session.save(publishers);
//			tx.commit();//�����ύ��֮����������ݿ�����������ʾ
//		} catch (Exception e) {
//			if (tx != null) {
//				tx.rollback();
//			}
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//		return  false;
//	}
//	 public boolean login(User user) throws Exception {
//		 Session session = sessionFactory.openSession();
//		 Criteria criteria = session.createCriteria(Books.class);
//		 criteria.addOrder(Order.asc("anthor"));
//		 List list = criteria.list();
//		 Iterator it =  list.iterator();
//		 while(it.hasNext()) {
//			 Books books = (Books)it.next();
//			 System.out.println(books.getAnthor());
//		 }
//		 return false;
//	 }
	
	
	// public boolean login(User user) throws Exception {
	// Session session = sessionFactory.openSession();
	// String hql = "from User as u where u.userName='" + user.getUserName() + "'
	// and u.passWord='"
	// + user.getPassWord() + "' ";
	// Query query = session.createQuery(hql);
	// @SuppressWarnings("unchecked")
	// List<User> list = query.list();
	// if (list.size() > 0) {
	// return true;
	// }
	// return false;
	// }
	//����ǲ������ݵĻ�  һ��Ҫ�Ժ�����   ��Ȼ���������ݿ�
//	public boolean login(User user) throws Exception {
//		User user1 = new User();
//		user1.setId(20131111);
//		user1.setPassWord("123456");
//		user1.setUserName("pgone");
//		Session session = sessionFactory.openSession();
//		Transaction tx = null;
//		try {
//			tx = session.beginTransaction();
//			session.save(user1);
//			tx.commit();//�����ύ��֮����������ݿ�����������ʾ
//			user1.setPassWord("6666666");
//		} catch (Exception e) {
//			if (tx != null) {
//				tx.rollback();
//			}
//			e.printStackTrace();
//		} finally {
//			session.close();
//		}
//		return false;
//	}

	// public boolean login(User user) throws Exception {
	// User user1 = new User();
	// user1.setId(20132966);
	// user1.setPassWord("123456");
	// user1.setUserName("you");
	// Session session = sessionFactory.openSession();
	// session.save(user1);
	// session.close();
	// return false;
	// }
	
	
//	
//	Session session = sessionFactory.openSession();
//	Publishers publishers = (Publishers)session.get(Publishers.class, "123456");
//	session.close();
//	System.out.println(publishers.getName());
//	Iterator iter = publishers.getBks().iterator();
//	while(iter.hasNext()){
//		Books books =(Books)iter.next();
//		System.out.println(books.getAnthor());
//	}
//	return false;

}
