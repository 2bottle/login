package repository;

import java.util.List;

import domain.MemberVO;

public interface MemberDAO {

	int insert(MemberVO mvo);

	List<MemberVO> selectList();

	MemberVO selectOne(MemberVO mvo);

	int update(MemberVO mvo);

	MemberVO detail(String id);

	int remove(String id);

}
