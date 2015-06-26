package com.cartmatic.estore.content.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.cartmatic.estore.common.model.content.Information;
import com.cartmatic.estore.content.dao.InformationDao;
import com.cartmatic.estore.core.dao.impl.HibernateGenericDaoImpl;

/**
 * Dao implementation for Information.
*/
public class InformationDaoImpl extends HibernateGenericDaoImpl<Information> implements InformationDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Information> getSinceInformation(final Integer pageNo, final Integer pageSize, final Integer type, final String keyword) {
		// TODO Auto-generated method stub
		List<Information> list = new ArrayList<Information>();
		list = this.getHibernateTemplate().executeFind(new HibernateCallback(){

			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				StringBuffer sb = new StringBuffer();
				sb.append("from Information r where 1=1 ");
				if(type != null){
					sb.append(" and r.type=:type");
				}
				if(StringUtils.isNotBlank(keyword)){
					sb.append(" and r.keyword like '%")
						.append(keyword)
						.append("%'");
				}
				sb.append(" order by r.updateTime desc");
				
				Query query = session.createQuery(sb.toString());
				if(type != null){
					query.setParameter("type", type);
				}
//				if(StringUtils.isNotBlank(keyword)){
//					query.setParameter("keyword", "%" + keyword + "%");
//				}
				query.setFirstResult((pageNo - 1)*pageSize);
				query.setMaxResults(pageSize);
				List rows = query.list();
				return rows;
			}
			
		});
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Information> getHotInformation(final Integer pageNo, final Integer pageSize) {
		// TODO Auto-generated method stub
		List<Information> list = new ArrayList<Information>();
		list = this.getHibernateTemplate().executeFind(new HibernateCallback(){

			@Override
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				StringBuffer sb = new StringBuffer();
				sb.append("from Information r where 1=1 ");
				sb.append(" order by r.likeCount desc");
				Query query = session.createQuery(sb.toString());
				query.setFirstResult((pageNo - 1)*pageSize);
				query.setMaxResults(pageSize);
				List rows = query.list();
				return rows;
			}
			
		});
		return list;
	}

}
