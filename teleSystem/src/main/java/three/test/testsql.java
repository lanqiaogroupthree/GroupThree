package three.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith    //表示继承了SpringJUnit4ClassRunner类
(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class testsql {
	@Resource
	private three.mapper.UserMapper UserMapper;
	/**
	 * 
	 */
	@Test
	public void selectRoleByridtest() {
//		powerMapper.insertRoleByrid("2222");
		List<String> ltst = UserMapper.selectUserPowerByAid(2);
//		Role role = powerMapper.selectRoleByrid(1);
		for(String a:ltst) {
			System.out.println(a);
			
		}
	}

}
