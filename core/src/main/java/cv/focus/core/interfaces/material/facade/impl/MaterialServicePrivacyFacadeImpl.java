package cv.focus.core.interfaces.material.facade.impl;

import cv.focus.common.infrastructure.services.StorageService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by song on 16/3/5.
 */
@Service
public class MaterialServicePrivacyFacadeImpl extends MaterialServiceFacadeImpl {
    private final Logger logger = Logger.getLogger(MaterialServicePrivacyFacadeImpl.class);
    @Resource
    private StorageService storageService;
    public String genPublicUrl(String key){
        return this.storageService.generatePrivacyUrl(key.substring(key.indexOf(".com")+5));
    }
}
