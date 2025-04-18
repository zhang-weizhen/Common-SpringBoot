package com.suke.czx.modules.oss.cloud;

import com.qiniu.http.Response;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;
import com.suke.czx.common.exception.RRException;
import com.suke.czx.modules.oss.entity.SysOss;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * 七牛云存储
 *
 * @author czx
 * @email object_czx@163.com
 * @date 2017-03-25 15:41
 */
@Slf4j
@Component
@AllArgsConstructor
public class QiniuCloudStorageService implements ICloudStorage {

    private final Auth auth;
    private final UploadManager uploadManager;
    private final QiniuProperties qiniuProperties;

    @Override
    public String upload(byte[] data, String path) {
        try {
            String token = auth.uploadToken(qiniuProperties.getBucketName());
            Response res = uploadManager.put(data, path, token);
            if (!res.isOK()) {
                throw new RRException("上传七牛出错：" + res.getInfo());
            }
        } catch (Exception e) {
            throw new RRException("上传文件失败，请核对七牛配置信息", e);
        }

        return qiniuProperties.getDomain() + "/" + path;
    }

    @Override
    public String uploadByName(byte[] data, String name) {
        return upload(data, getPathByName(qiniuProperties.getPrefix(), name));
    }

    @Override
    public String upload(InputStream inputStream, String path) {
        try {
            byte[] data = IOUtils.toByteArray(inputStream);
            return this.upload(data, path);
        } catch (IOException e) {
            throw new RRException("上传文件失败", e);
        }
    }

    @Override
    public String uploadSuffix(byte[] data, String suffix) {
        return upload(data, getPath(qiniuProperties.getPrefix(), suffix));
    }

    @Override
    public String uploadSuffix(InputStream inputStream, String suffix) {
        return upload(inputStream, getPath(qiniuProperties.getPrefix(), suffix));
    }
    @Override
    public String getUrl(SysOss ossEntity){
        if (ossEntity == null) {
            return "";
        }
        String fileName = ossEntity.getUrl();

        String  encodedFileName = "http://" + fileName;


        long expireInSeconds = 3600;//1小时，可以自定义链接过期时间
        String finalUrl = auth.privateDownloadUrl(encodedFileName, expireInSeconds);
        return finalUrl;
    }
}
