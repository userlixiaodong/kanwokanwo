package cv.focus.core.domain.material;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by song on 16/1/27.
 */

public class MaterialListUtil {

    public static List<Material> addMaterial(List<Material> materials, Material material) {
        if (materials == null)
            materials = new ArrayList<Material>();
        material.setSeq(materials.size());
        materials.add(material);
        return materials;
    }

    public static List<Material> delMaterialById(List<Material> materials, MaterialId materialId) {
        if (materials.isEmpty())
            return null;
        Iterator iter = materials.iterator();
        int location = 0;
        while (iter.hasNext()) {
            Material material = (Material) iter.next();
            if (material.getMaterialId().sameValueAs(materialId)) {
                iter.remove();
                break;
            }
            location++;
        }
        for (int i = location; i < materials.size(); i++) {
            materials.get(i).setSeq(i);
        }
        return materials;
    }

    //调换materials位置，考虑用户页面上调整素材顺序，arrayList做出相应变化
    public static List<Material> exchangeMaterialLocation(List<Material> materials, int orig, int dest) {
        if (dest < 0 || orig < 0 || dest > materials.size() || orig > materials.size())
            return null;
        Material material = materials.remove(orig);
//        material.setSeq(dest);
        materials.add(dest, material);
        int beg = dest > orig ? orig : dest;
        int end = orig + dest - beg;
        for (int i = beg; i < end+1; i++) {
            materials.get(i).setSeq(i);
        }
        return materials;
    }

    public static List<Material> delMaterialByLocation(List<Material> materials, int location) {
        if (location > materials.size())
            return materials;
        else
            materials.remove(location);
        for (int i = location; i < materials.size(); i++) {
            materials.get(i).setSeq(i);
        }
        return materials;
    }
}
