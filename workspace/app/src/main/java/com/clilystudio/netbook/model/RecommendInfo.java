
package com.clilystudio.netbook.model;

import com.google.gson.Gson;

public class RecommendInfo {

    private String op;
    private String recommended;
// Error: Internal #201: 
// The following method may not be correct.

    public static RecommendInfo getInfoFromJson(String String1)
    {
    }

    public String getOp()
    {
        return op;
    }

    public String getRecommended()
    {
        return recommended;
    }

    public void setOp(String String1)
    {
        op = String1;
    }

    public void setRecommended(String String1)
    {
        recommended = String1;
    }
}
