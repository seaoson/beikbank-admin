package com.beikbank.util.baseAction;

import net.sf.json.JSONObject;
import org.slf4j.Logger;

import java.util.List;
import java.util.Map;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.TreeMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;

public class BaseAction {
    public static Logger logger = LoggerFactory.getLogger(BaseAction.class);
    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected HttpSession session;
    protected HashMap<String, Object> hashMap;
    protected TreeMap<String, Object> treeMap;
    protected LinkedHashMap<String, Object> linkedMap;
    protected JSONObject jsonObj;

    public BaseAction() {
    }

    @ModelAttribute
    public void setReqAndRes(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
        this.session = request.getSession();
        this.hashMap = PToMap.hashMap(request);
        this.treeMap = PToMap.treeMap(request);
        this.linkedMap = PToMap.linkedMap(request);
        this.jsonObj = PToMap.jsonObject(request);
    }

    public void ajaxReturn(String strResult) {
        this.response.setContentType("text/plain; charset=utf-8");
        this.response.setHeader("pragma", "no-cache");
        this.response.setHeader("cache-control", "no-cache");
        this.response.setDateHeader("Expires", -10L);

        try {
            this.response.getWriter().write(strResult);
        } catch (IOException var3) {
            var3.printStackTrace();
        }

    }

    public static String processDataNull(Object val) {
        return val == null?"":val + "";
    }

    public static Object processDataNullForObject(Object val) {
        return val == null?new String(""):val;
    }

    public static int processDataNullForInt(Object val) {
        return Integer.parseInt(val == null?"0":val + "");
    }

    public static long processDataNullForLong(Object val) {
        return Long.parseLong(val == null?"0":val + "");
    }

    public static Map<String, Object> processDataNullForMap(Object val) {
        return (Map)((Map)(val == null?new HashMap():val));
    }

    public static List processDataNullForList(Object val) {
        return (List)((List)(val == null?new ArrayList():val));
    }
}
