package controller;

import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.EuclideanDistanceSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.nio.channels.FileChannel;
import java.util.List;

@Controller
@RequestMapping("/")
public class MainControler {
    @RequestMapping(value = "/",method =RequestMethod.GET)
    public String getpage(ModelMap modelMap){
        return "homepage";

    }
    @RequestMapping(value = "/data",method = RequestMethod.GET)
    public String forms(){
        return "UCF";
    }
    @RequestMapping(value="/upload",method=RequestMethod.POST)
    public String upload(HttpServletRequest request,
                         @RequestParam("file") MultipartFile file) throws Exception {

        //System.out.println(description);
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/content/");
            System.out.println(path);
            //上传文件名
            String filename = file.getOriginalFilename();
            System.out.println(filename);
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            file.transferTo(new File(path + File.separator + filename));//分割器
            return "succefual";
        } else {
            return "UCF";
        }

    }

    @RequestMapping(value = "putdata",method = RequestMethod.GET)
    public String putdata(){
        return "succefual";
    }
    @RequestMapping(value = "ucfit",method = RequestMethod.POST)
    public String ucfit(
            HttpServletRequest request,@RequestParam("id") int hasgetid,@RequestParam("name") String hasgetfile,ModelMap modelMap
    ){
        String path=request.getServletContext().getRealPath("/content/");
        File file=new File("/usr/local/tomcat7/webapps/my/content/"+hasgetfile);
        DataModel dataModel= null;
        System.out.println(hasgetid);
        System.out.println(file.getPath());
        try {
            dataModel = new FileDataModel(file);
            //计算相似度这里采用欧式距离
            UserSimilarity similarity=new EuclideanDistanceSimilarity(dataModel);
            //基于5个邻居计算相似度
            UserNeighborhood neighborhood=new NearestNUserNeighborhood(20,similarity,dataModel);
            //基于用户协同推荐
            Recommender recommender=new GenericUserBasedRecommender(dataModel,neighborhood,similarity);
            //推
            List<RecommendedItem> list=recommender.recommend(hasgetid,1);
            if (list.size()==0){
                System.out.println("你提交的数据格式有误，请核实数据");
            }
            else {
                System.out.println(list.size());
                modelMap.addAttribute("key",list.get(0).getItemID());
                modelMap.addAttribute("value",list.get(0).getValue());

            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TasteException e) {
            e.printStackTrace();
        }
        return "result";
    }
}
