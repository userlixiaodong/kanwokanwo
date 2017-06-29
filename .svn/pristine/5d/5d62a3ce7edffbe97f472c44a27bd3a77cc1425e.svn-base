package cv.focus.core.application.impl;

import cv.focus.core.application.MaterialService;
import cv.focus.core.domain.material.Material;
import cv.focus.core.domain.material.MaterialRepository;
import cv.focus.core.domain.material.MaterialStatus;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * MaterialServiceImpl
 * 
 * @author liuruichao
 * Created on 2016-04-22 15:49
 */
@Service
public class MaterialServiceImpl implements MaterialService {
    @Resource
    private MaterialRepository materialRepository;

    @Override
    public Material getMaterialById(String materialId) {
        return materialRepository.findById(materialId);
    }

    @Override
    public Material delMaterial(String materialId) {
        Material material = materialRepository.findById(materialId);
        if (material != null) {
            materialRepository.del(material);
        }
        return material;
    }

    @Override
    public Material updateStatus(String jobId, MaterialStatus status) {
        Material material = materialRepository.findByTransCodeJobId(jobId);
        if (material != null) {
            material.setStatus(status);
            materialRepository.store(material);
        }
        return material;
    }

    @Override
    public void save(Material material) {
        materialRepository.store(material);
    }
}
