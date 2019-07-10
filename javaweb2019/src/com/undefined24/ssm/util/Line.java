package com.undefined24.ssm.util;

import java.util.ArrayList;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Line {
	public static final String APPKEY = "ad138926a76c8961";
    public static final String URL = "http://api.jisuapi.com/train/line";
 
    public static ArrayList<String> Get(String MyTrainno) {
        String result = null;
        String url = URL + "?appkey=" + APPKEY + "&trainno=" + MyTrainno;
        ArrayList<String> myCities = new ArrayList<String>();
 
        try {
            result = HttpUtil.sendGet(url, "utf-8");
            JSONObject json = JSONObject.fromObject(result);
            if (json.getInt("status") != 0) {
                System.out.println(json.getString("msg"));
            } else {
                JSONObject resultarr = json.optJSONObject("result");
                String trainno = resultarr.getString("trainno");
                String type = resultarr.getString("type");
                System.out.println(trainno + " " + type);
                if (resultarr.opt("list") != null) {
                    JSONArray list = resultarr.optJSONArray("list");
                    for (int i = 0; i < list.size(); i++) {
                        JSONObject obj = (JSONObject) list.opt(i);
                        String sequenceno = obj.getString("sequenceno");
                        String station = obj.getString("station");
                        myCities.add(station);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        for(String s : myCities){
    		System.out.println(s);
    	}
        return myCities;
    }
}
