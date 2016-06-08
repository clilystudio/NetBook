package com.clilystudio.netbook.model;

import com.google.gson.Gson;

public class RecommendInfo {
    private String op;
    private String recommended;

    public static RecommendInfo getInfoFromJson(String paramString) {
        if (paramString == null)
            return null;
        try {
            RecommendInfo localRecommendInfo = (RecommendInfo) new Gson().fromJson(paramString, RecommendInfo.class);
            return localRecommendInfo;
        } catch (Exception localException) {
        }
        return null;
    }

    public String getOp() {
        return this.op;
    }

    public void setOp(String paramString) {
        this.op = paramString;
    }

    public String getRecommended() {
        return this.recommended;
    }

    public void setRecommended(String paramString) {
        this.recommended = paramString;
    }
}

