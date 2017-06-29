package cv.focused.common.infrastructure.services;

import cv.focus.common.infrastructure.services.StorageService;
import cv.focus.common.infrastructure.services.impl.AliyunOSSStorageService;
import cv.focus.common.infrastructure.services.impl.VideoTransCodeDTO;
import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;

/**
 * StorageServiceTest
 * 
 * @author liuruichao
 * Created on 2016-02-23 14:38
 */
public class StorageServiceTest {
    private StorageService storageService;

    @Before
    public void before() {
        storageService = new AliyunOSSStorageService();
    }

    @Test
    public void testUploadVideo() throws IOException {
        File file = new File("/Users/liuruichao/Downloads/OG1-Section6-ISE12~29.mov");
        VideoTransCodeDTO videoTransCodeDTO = storageService.putVideo(file.getName(), file);
        System.out.println(videoTransCodeDTO.getUrl());
    }

    @Test
    public void testPutFile() throws IOException {
        File file = new File("/Users/liuruichao/Downloads/套题.mmap");
        String url = storageService.putFile(file.getName(), file);
        System.out.println(url);
    }

    @Test
    public void testPutImage() throws IOException {
        File file = new File("/Users/liuruichao/Downloads/btdz.jpg");
        String url = storageService.putImage(file.getName(), file);
        System.out.println(url);
    }
}
