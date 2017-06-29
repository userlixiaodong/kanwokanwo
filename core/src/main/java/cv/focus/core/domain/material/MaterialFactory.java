package cv.focus.core.domain.material;

/**
 * Created by song on 16/3/5.
 */
public class MaterialFactory {
    public static Material createMaterial(String url, String previewImgUrl, MaterialStatus status, MaterialType type, String transCodeJobId){
        return createMaterial("",url, previewImgUrl, status, type, transCodeJobId );
    }
    public static Material createMaterial(String title, String url, String previewImgUrl, MaterialStatus status, MaterialType type, String transCodeJobId){
        Material material = null;
        switch (type){
            case IMG:
            case DOC:
                material = createMaterial(type, url,title, status);
                break;

            case VIDEO:
                material = new Video(previewImgUrl,  url, status, transCodeJobId);
        }
        if(material != null)
            material.setTitle(title);
        return material;
    }

    public static Material createMaterial(MaterialType type, String url, String title, MaterialStatus status){
        Material material = null;
        switch (type){
            case IMG:
                material = new Image(url, status);
                break;

            case DOC:
                material = new Document(url, status);
                break;

            case VIDEO:
                material = new Video();
                material.setType(type);
        }

        return material;
    }

}
