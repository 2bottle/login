package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import domain.MemberVO;
import orm.DatabaseBuilder;

public class MemberDAOImpl implements MemberDAO {
	private SqlSession sql;
	private final String NS = "MemberMapper.";
	
	public MemberDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}
	@Override
	public int insert(MemberVO mvo) {
		System.out.println("check 2-3");
		int isUp = sql.insert(NS+"reg", mvo);
		if(isUp > 0) {
			sql.commit();
		}
		return isUp;
	}
	@Override
	public List<MemberVO> selectList() {
		return sql.selectList(NS+"list");
	}
	@Override
	public MemberVO selectOne(MemberVO mvo) {
		return sql.selectOne(NS+"login", mvo);
	}
	@Override
	public int update(MemberVO mvo) {
		int isUp = sql.update(NS+"mod", mvo);
		if(isUp > 0) {
			sql.commit();
		}
		return isUp;
	}
	@Override
	public MemberVO detail(String id) {
		return sql.selectOne(NS+"detail", id);
	}
	@Override
	public int remove(String id) {
		int isUp = sql.delete(NS+"remove", id);
		if(isUp > 0) {
			sql.commit();
		}
		return isUp;
	}
}
