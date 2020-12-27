package zyr.cd.service;

import java.sql.SQLException;

import zyr.cd.dao.CdDao;
import zyr.cd.domain.Cd;
import zyr.cd.pager.PageBean;

public class CdService {
	private CdDao cdDao = new CdDao();
	
	/**
	 * 删除唱片
	 * @param bid
	 */
	public void delete(String bid) {
		try {
			cdDao.delete(bid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 修改唱片
	 * @param cd
	 */
	public void edit(Cd cd) {
		try {
			cdDao.edit(cd);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 返回当前分类下唱片个数
	 * @param cid
	 * @return
	 */
	public int findCdCountByCategory(String cid) {
		try {
			return cdDao.findCdCountByCategory(cid);
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 加载唱片
	 * @param bid
	 * @return
	 */
	public Cd load(String bid) {
		try {
			return cdDao.findByBid(bid);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 按分类查
	 * @param cid
	 * @param pc
	 * @return
	 */
	public PageBean<Cd> findByCategory(String cid, int pc) {
		try {
			return cdDao.findByCategory(cid, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 按唱片名查
	 * @param bname
	 * @param pc
	 * @return
	 */
	public PageBean<Cd> findByBname(String bname, int pc) {
		try {
			return cdDao.findByBname(bname, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 按歌手查
	 * @param singer
	 * @param pc
	 * @return
	 */
	public PageBean<Cd> findBySinger(String singer, int pc) {
		try {
			return cdDao.findBySinger(singer, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 按版本查
	 * @param press
	 * @param pc
	 * @return
	 */
	public PageBean<Cd> findByPress(String press, int pc) {
		try {
			return cdDao.findByPress(press, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 多条件组合查询
	 * @param criteria
	 * @param pc
	 * @return
	 */
	public PageBean<Cd> findByCombination(Cd criteria, int pc) {
		try {
			return cdDao.findByCombination(criteria, pc);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 添加唱片
	 * @param cd
	 */
	public void add(Cd cd) {
		try {
			cdDao.add(cd);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
