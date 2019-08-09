package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysCteph;
import java.util.List;	

/**
 * CTEPH调查 数据层
 * 
 * @author ruoyi
 * @date 2019-08-05
 */
public interface CtephMapper 
{
	/**
     * 查询CTEPH调查信息
     * 
     * @param id CTEPH调查ID
     * @return CTEPH调查信息
     */
	public SysCteph selectCtephById(Integer id);
	
	/**
     * 查询CTEPH调查列表
     * 
     * @param cteph CTEPH调查信息
     * @return CTEPH调查集合
     */
	public List<SysCteph> selectCtephList(SysCteph cteph);
	
	/**
     * 新增CTEPH调查
     * 
     * @param cteph CTEPH调查信息
     * @return 结果
     */
	public int insertCteph(SysCteph cteph);
	
	/**
     * 修改CTEPH调查
     * 
     * @param cteph CTEPH调查信息
     * @return 结果
     */
	public int updateCteph(SysCteph cteph);
	
	/**
     * 删除CTEPH调查
     * 
     * @param id CTEPH调查ID
     * @return 结果
     */
	public int deleteCtephById(Integer id);
	
	/**
     * 批量删除CTEPH调查
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteCtephByIds(String[] ids);
	
}