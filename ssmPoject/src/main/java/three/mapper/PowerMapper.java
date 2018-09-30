package three.mapper;

import three.pojo.Power;

public interface PowerMapper {
	public Power selectPowerBypid(Integer pid);
	public int deletePowerBypid(Integer pid);
	public int insertPowerBypid(Power power);
	public int updatePowerBypid(Power power);
}
