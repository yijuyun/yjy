package com.ruoyi.web.controller.cteph;

import java.util.Date;
import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.SysCteph;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ICtephService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.util.ShiroUtils;

/**
 * CTEPH调查 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-08-05
 */
@Controller
@RequestMapping("/system/cteph")
public class CtephController extends BaseController
{
    private String prefix = "system/cteph";
	
	@Autowired
	private ICtephService ctephService;
	
	@RequiresPermissions("system:cteph:view")
	@GetMapping()
	public String cteph()
	{
	    return prefix + "/cteph";
	}
	
	/**
	 * 查询CTEPH调查列表
	 */
	@RequiresPermissions("system:cteph:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(SysCteph cteph)
	{
		startPage();
        List<SysCteph> list = ctephService.selectCtephList(cteph);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出CTEPH调查列表
	 */
	@RequiresPermissions("system:cteph:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysCteph cteph)
    {
    	List<SysCteph> list = ctephService.selectCtephList(cteph);
        ExcelUtil<SysCteph> util = new ExcelUtil<SysCteph>(SysCteph.class);
        return util.exportExcel(list, "cteph");
    }
	
	/**
	 * 新增CTEPH调查
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存CTEPH调查
	 */
	@RequiresPermissions("system:cteph:add")
	@Log(title = "CTEPH调查", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(@Validated SysCteph cteph)
	{		
		SysUser user = ShiroUtils.getSysUser();
		cteph.setCreateBy(user.getUserName());
		cteph.setCreateTime(new Date());
		cteph.setTs(new Date());
		cteph.setDr(0);
		return toAjax(ctephService.insertCteph(cteph));
	}


	/**
	 * CTEPH调查详情
	 */
	@GetMapping("/view/{id}")
	public String view(@PathVariable("id") Integer id, ModelMap mmap)
	{
		SysCteph cteph = ctephService.selectCtephById(id);
		mmap.put("cteph", cteph);
	    return prefix + "/view";
	}

	/**
	 * 修改CTEPH调查
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		SysCteph cteph = ctephService.selectCtephById(id);
		mmap.put("cteph", cteph);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存CTEPH调查
	 */
	@RequiresPermissions("system:cteph:edit")
	@Log(title = "CTEPH调查", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(SysCteph cteph)
	{		
		return toAjax(ctephService.updateCteph(cteph));
	}
	
	/**
	 * 删除CTEPH调查
	 */
	@RequiresPermissions("system:cteph:remove")
	@Log(title = "CTEPH调查", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(ctephService.deleteCtephByIds(ids));
	}
	
}
