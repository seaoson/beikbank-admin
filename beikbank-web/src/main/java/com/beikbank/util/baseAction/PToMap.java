package com.beikbank.util.baseAction;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.TreeMap;
import javax.servlet.http.HttpServletRequest;

public class PToMap {
    public PToMap() {
    }

    public static HashMap<String, Object> hashMap(HttpServletRequest r) {
        new LinkedHashMap();
        HashMap hmap = new HashMap();

        try {
            LinkedHashMap cMap;
            Iterator var3;
            Map.Entry entry;
            switch(GetORPost(r)) {
                case -2:
                    return null;
                case -1:
                    return null;
                case 0:
                    cMap = methodMapGet(r);
                    if(cMap == null) {
                        return null;
                    }

                    var3 = cMap.entrySet().iterator();

                    while(var3.hasNext()) {
                        entry = (Map.Entry)var3.next();
                        hmap.put(entry.getKey(), entry.getValue());
                    }

                    return hmap;
                case 1:
                    cMap = methodMapPost(r);
                    if(cMap == null) {
                        return null;
                    }

                    var3 = cMap.entrySet().iterator();

                    while(var3.hasNext()) {
                        entry = (Map.Entry)var3.next();
                        hmap.put(entry.getKey(), entry.getValue());
                    }

                    return hmap;
                case 2:
                    return null;
                default:
                    return null;
            }
        } catch (Exception var5) {
            return null;
        }
    }

    public static TreeMap<String, Object> treeMap(HttpServletRequest r) {
        new LinkedHashMap();
        TreeMap tmap = new TreeMap();

        try {
            LinkedHashMap cMap;
            Iterator var3;
            Map.Entry entry;
            switch(GetORPost(r)) {
                case -2:
                    return null;
                case -1:
                    return null;
                case 0:
                    cMap = methodMapGet(r);
                    if(cMap == null) {
                        return null;
                    }

                    var3 = cMap.entrySet().iterator();

                    while(var3.hasNext()) {
                        entry = (Map.Entry)var3.next();
                        tmap.put(entry.getKey(), entry.getValue());
                    }

                    return tmap;
                case 1:
                    cMap = methodMapPost(r);
                    if(cMap == null) {
                        return null;
                    }

                    var3 = cMap.entrySet().iterator();

                    while(var3.hasNext()) {
                        entry = (Map.Entry)var3.next();
                        tmap.put(entry.getKey(), entry.getValue());
                    }

                    return tmap;
                case 2:
                    return null;
                default:
                    return null;
            }
        } catch (Exception var5) {
            return null;
        }
    }

    public static LinkedHashMap<String, Object> linkedMap(HttpServletRequest r) {
        new LinkedHashMap();

        try {
            LinkedHashMap cMap;
            switch(GetORPost(r)) {
                case -2:
                    return null;
                case -1:
                    return null;
                case 0:
                    cMap = methodMapGet(r);
                    if(cMap == null) {
                        return null;
                    }

                    return cMap;
                case 1:
                    cMap = methodMapPost(r);
                    if(cMap == null) {
                        return null;
                    }

                    return cMap;
                case 2:
                    return null;
                default:
                    return null;
            }
        } catch (Exception var3) {
            return null;
        }
    }

    public static JSONObject jsonObject(HttpServletRequest r) {
        new JSONObject();

        try {
            JSONObject jsonObject;
            switch(GetORPost(r)) {
                case -2:
                    return null;
                case -1:
                    return null;
                case 0:
                    jsonObject = methodJSONGet(r);
                    if(jsonObject == null) {
                        return null;
                    }

                    return jsonObject;
                case 1:
                    jsonObject = methodJSONPost(r);
                    if(jsonObject == null) {
                        return null;
                    }

                    return jsonObject;
                case 2:
                    return null;
                default:
                    return null;
            }
        } catch (Exception var3) {
            return null;
        }
    }

    private static LinkedHashMap<String, Object> methodMapGet(HttpServletRequest r) {
        String param = r.getQueryString();
        LinkedHashMap map = new LinkedHashMap();

        try {
            String[] params = param.split("&");

            for(int i = 0; i < params.length; ++i) {
                try {
                    map.put(params[i].split("=")[0], params[i].split("=")[1]);
                } catch (Exception var6) {
                    map.put(params[i].split("=")[0], "");
                }
            }

            return map;
        } catch (Exception var7) {
            return null;
        }
    }

    private static LinkedHashMap<String, Object> methodMapPost(HttpServletRequest r) throws UnsupportedEncodingException, IOException {
        LinkedHashMap<String, Object> param = new LinkedHashMap();
        Enumeration params = r.getParameterNames();

        while(params.hasMoreElements()) {
            String name = (String)params.nextElement();
            String value = r.getParameter(name);
            param.put(name, value);
        }

        return param;
    }

    private static JSONObject methodJSONGet(HttpServletRequest r) {
        String param = r.getQueryString();
        JSONObject jsonObject = new JSONObject();

        try {
            String[] params = param.split("&");

            for(int i = 0; i < params.length; ++i) {
                try {
                    jsonObject.put(params[i].split("=")[0], params[i].split("=")[1]);
                } catch (Exception var6) {
                    jsonObject.put(params[i].split("=")[0], "");
                }
            }

            return jsonObject;
        } catch (Exception var7) {
            return null;
        }
    }

    private static JSONObject methodJSONPost(HttpServletRequest r) {
        JSONObject param = new JSONObject();
        Enumeration params = r.getParameterNames();

        while(params.hasMoreElements()) {
            String name = (String)params.nextElement();
            String value = r.getParameter(name);
            param.put(name, value);
        }

        return param;
    }

    private static int GetORPost(HttpServletRequest r) {
        try {
            String params = "";
            params = r.getQueryString();

            try {
                if(!params.equals("") && params != null) {
                    return 0;
                } else {
                    Map<String, String[]> mapParams = r.getParameterMap();
                    return mapParams != null && mapParams.size() <= 0?-1:1;
                }
            } catch (Exception var4) {
                Map<String, String[]> mapParams = r.getParameterMap();
                return mapParams != null && mapParams.size() <= 0?2:1;
            }
        } catch (Exception var5) {
            var5.printStackTrace();
            return -2;
        }
    }

    class jsonArray {
        private JSONArray jsonTemp = new JSONArray();

        private jsonArray() {
        }

        private void addJsonObj(JSONObject jsonObject) {
            this.jsonTemp.add(jsonObject);
        }

        private void addJsonObjs(JSONObject... jsonObjects) {
            JSONObject[] var2 = jsonObjects;
            int var3 = jsonObjects.length;

            for(int var4 = 0; var4 < var3; ++var4) {
                JSONObject jsonObject = var2[var4];
                this.jsonTemp.add(jsonObject);
            }

        }

        private JSONArray getJSONArray() {
            return this.jsonTemp;
        }
    }

    class list {
        private List<Map<String, Object>> listTemp = new ArrayList();

        private list() {
        }

        private void addList(Map<String, Object> map) {
            this.listTemp.add(map);
        }

        private void addLists(Map... maps) {
            Map[] var2 = maps;
            int var3 = maps.length;

            for(int var4 = 0; var4 < var3; ++var4) {
                Map<String, Object> map = var2[var4];
                this.listTemp.add(map);
            }

        }

        private List<Map<String, Object>> getList() {
            return this.listTemp;
        }
    }
}
