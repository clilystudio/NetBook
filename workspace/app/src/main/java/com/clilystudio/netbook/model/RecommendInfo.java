package com.clilystudio.netbook.model;

import com.google.gson.Gson;

public class RecommendInfo {
    private String op;
    private String recommended;

    public static RecommendInfo getInfoFromJson(String string) {
        if (string == null) {
            return null;
        }
        try {
            RecommendInfo recommendInfo = new Gson().fromJson(string, RecommendInfo.class);
            return recommendInfo;
        } catch (Exception var1_2) {
            return null;
        }
    }

    public String getOp() {
        return this.op;
    }

    public void setOp(String string) {
        this.op = string;
    }

    public String getRecommended() {
        return this.recommended;
    }

    public void setRecommended(String string) {
        this.recommended = string;
    }
}
