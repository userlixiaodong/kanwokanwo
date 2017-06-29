package cv.focus.search.application.impl;

import cv.focus.common.infrastructure.util.paginaction.WebPage;
import cv.focus.search.application.SearchService;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lcq on 2016/2/23.
 */
@Service
public class SearchServiceImpl implements SearchService{
    private final Logger logger = Logger.getLogger(SearchServiceImpl.class);

    @Resource
    private HttpSolrServer server;

    public List<String> querySchoolName(String keywords) {
        List<String> list = new ArrayList<String>(0);
        try {
            if (StringUtils.isNotBlank(keywords)) {
                keywords = escapeQueryChars(keywords);
                SolrQuery query = new SolrQuery();
                query.setQuery("studentprofile_name:(" + keywords + ")");
                query.set("qt", "search");
                query.setTermsMaxCount(10);
                QueryResponse response = server.query(query);
                SolrDocumentList documents = response.getResults();
                if (documents != null && documents.size() > 0) {
                    for (int i = 0; i < documents.size(); i++) {
                        SolrDocument document = documents.get(i);
                        list.add(document.get("studentprofile_name").toString());
                    }
                }
            }
        } catch (Exception e) {
            logger.error("SearchServiceImpl.querySchoolName()", e);
        }
        return list;
    }

    public WebPage<Object> queryUsers(String keywords, WebPage<Object> webPage) {
        if(keywords == null || keywords.equals("")) return null;
        try{
            keywords = escapeQueryChars(keywords);
            SolrQuery query = new SolrQuery();
            StringBuffer queryString = new StringBuffer();
            System.out.println(keywords);
            query.setQuery("cv_all:(" + keywords + ")");
            //设置加权规则
            query.set("qt","search");
            //设置默认查询字段
            query.setParam("df", "cv_all");
            QueryResponse response = null;
            response = server.query(query);
            // 查询到的记录总数
            Integer totalRow = Long.valueOf(response.getResults().getNumFound())
                    .intValue();
            webPage.setTotalCount(totalRow);
            query.setStart((webPage.getCurrentPage() - 1 ) * webPage.getPageSize());
            query.setRows(webPage.getPageSize());
            // 查询结果集
            response = server.query(query);
            SolrDocumentList documents = response.getResults();
            webPage.setData((List)documents);
        }catch (Exception e) {
            e.printStackTrace();
        }
        return webPage;
    }

    public static String escapeQueryChars(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            // 去除检索词中的特殊符号
            if (c == '\\' || c == '-' || c == '!'  || c == '(' || c == ')' || c == ':'
                    || c == '^' || c == '[' || c == ']' || c == '\"' || c == '{' || c == '}' || c == '~'
                    || c == '*' || c == '?' || c == '|' || c == ';' || c == '/') {
                sb.append('\\');
            }
            sb.append(c);
        }
        return sb.toString();
    }
}
