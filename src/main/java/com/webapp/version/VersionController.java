package com.webapp.version;

import com.webapp.commons.JsonMapper;
import com.webapp.commons.uploadUtils.FileUtil;
import com.webapp.version.entity.Version;
import com.webapp.version.service.VersionService;
import net.sf.json.JSON;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.ws.rs.PathParam;
import java.io.File;
import java.util.Iterator;

/**
 * Created by cako on 2014/5/6.
 */
@Controller
@RequestMapping("/version")
public class VersionController {

    private VersionService versionService;

    @Autowired
    public void setVersionService(VersionService versionService) {
        this.versionService = versionService;
    }

    public static boolean delAllFile(String path) {
        boolean flag = false;
        File file = new File(path);
        if (!file.exists()) {
            return flag;
        }
        if (!file.isDirectory()) {
            return flag;
        }
        String[] tempList = file.list();
        File temp = null;
        for (int i = 0; i < tempList.length; i++) {
            if (path.endsWith(File.separator)) {
                temp = new File(path + tempList[i]);
            } else {
                temp = new File(path + File.separator + tempList[i]);
            }
            if (temp.isFile()) {
                temp.delete();
            }
            if (temp.isDirectory()) {
                delAllFile(path + "/" + tempList[i]);// 先删除文件夹里面的文件
                delFolder(path + "/" + tempList[i]);// 再删除空文件夹
                flag = true;
            }
        }
        return flag;
    }
    public static void delFolder(String folderPath) {
        try {
            delAllFile(folderPath); // 删除完里面所有内容
            String filePath = folderPath;
            filePath = filePath.toString();
            File myFilePath = new File(filePath);
            myFilePath.delete(); // 删除空文件夹
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/upLoad/{file}",method = {RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public String upload(MultipartHttpServletRequest request){
        System.out.println("开始");
        String path = request.getSession().getServletContext().getRealPath("upload");
        Iterator<?> iterator = request.getFileNames();
        String result = "上传失败";
        while (iterator.hasNext()) {
            MultipartFile multipartFile = request.getFile((String) iterator.next());
            Long size = multipartFile.getSize();
            Float mb = (float) (size / (1024 * 1024));
            if (mb < 20) {
                String name = multipartFile.getName();
                Version v = FileUtil.saveUploadFile(multipartFile, path,name,"upload");
                if(v != null){
                    result = "上传成功";
                }else {
                    result = "上传失败";
                }
            } else {
                result = "文件大小超过20MB";
            }
        }
        return new JsonMapper().toJson(result);
    }
}
