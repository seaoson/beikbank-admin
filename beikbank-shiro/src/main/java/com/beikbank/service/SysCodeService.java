package com.beikbank.service;

import com.beikbank.entity.SysCode;

import java.util.List;
import java.util.Map;

/**
 * 表码信息表
 * 
 * @author chenyi
 * @email 228112142@qq.com
 * @date 2017-06-29 10:46:14
 */
public interface SysCodeService {
	
	SysCode queryObject(Long id);
	
	List<SysCode> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(SysCode sysCode);
	
	void update(SysCode sysCode);
	
	void delete(Long id);
	
	void deleteBatch(Long[] ids);

    List<SysCode> getCodeValues(Map<String, Object> params);

    List<SysCode> findByVerify(SysCode sysCode);
}
