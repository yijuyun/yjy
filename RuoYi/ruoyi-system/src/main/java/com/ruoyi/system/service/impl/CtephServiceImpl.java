package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.CtephMapper;
import com.ruoyi.system.domain.SysCteph;
import com.ruoyi.system.service.ICtephService;
import com.ruoyi.common.core.text.Convert;

/**
 * CTEPH调查 服务层实现
 * 
 * @author ruoyi
 * @date 2019-08-05
 */
@Service
public class CtephServiceImpl implements ICtephService 
{
	@Autowired
	private CtephMapper ctephMapper;

	/**
     * 查询CTEPH调查信息
     * 
     * @param id CTEPH调查ID
     * @return CTEPH调查信息
     */
    @Override
	public SysCteph selectCtephById(Integer id)
	{
	    return ctephMapper.selectCtephById(id);
	}
	
	/**
     * 查询CTEPH调查列表
     * 
     * @param cteph CTEPH调查信息
     * @return CTEPH调查集合
     */
	@Override
	public List<SysCteph> selectCtephList(SysCteph cteph)
	{
	    return ctephMapper.selectCtephList(cteph);
	}
	
    /**
     * 新增CTEPH调查
     * 
     * @param cteph CTEPH调查信息
     * @return 结果
     */
	@Override
	public int insertCteph(SysCteph cteph)
	{
	    return ctephMapper.insertCteph(cteph);
	}
	
	/**
     * 修改CTEPH调查
     * 
     * @param cteph CTEPH调查信息
     * @return 结果
     */
	@Override
	public int updateCteph(SysCteph cteph)
	{
	    return ctephMapper.updateCteph(cteph);
	}

	/**
     * 删除CTEPH调查对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteCtephByIds(String ids)
	{
		return ctephMapper.deleteCtephByIds(Convert.toStrArray(ids));
	}
	
}
