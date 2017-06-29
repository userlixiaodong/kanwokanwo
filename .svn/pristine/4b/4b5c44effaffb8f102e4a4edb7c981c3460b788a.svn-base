package cv.focused.common.infrastructure.services;

import com.aliyun.api.AliyunClient;
import com.aliyun.api.DefaultAliyunClient;
import com.aliyun.api.mts.mts20140618.request.SubmitSnapshotJobRequest;
import com.aliyun.api.mts.mts20140618.response.SubmitSnapshotJobResponse;
import com.taobao.api.ApiException;
import cv.focus.common.infrastructure.services.TranscodeService;
import cv.focus.common.infrastructure.services.impl.AliyunMTSService;
import org.junit.Before;
import org.junit.Test;

import java.util.Date;

/**
 * TranscodingService
 * 
 * @author liuruichao
 * Created on 2016-02-23 15:12
 */
public class TranscodeServiceTest {
    private TranscodeService transcodeService;

    @Before
    public void before() {
        transcodeService = new AliyunMTSService();
    }

    @Test
    public void testTranscoding() {
        transcodeService.submitTranscodeJob("test.wmv");
    }
}
