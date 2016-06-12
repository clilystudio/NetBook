
package com.clilystudio.netbook.model;

import com.google.gson.Gson;

public class TtsRoot {

    private TtsRoot$TtsResult result;
    private String ret;
// Error: Internal #201: 
// The following method may not be correct.

    public static TtsRoot getInfoFromJson(String String1)
    {
    }

    public TtsRoot$TtsResult getResult()
    {
        return result;
    }

    public String getRet()
    {
        return ret;
    }

    public void setResult(TtsRoot$TtsResult TtsResult1)
    {
        result = TtsResult1;
    }

    public void setRet(String String1)
    {
        ret = String1;
    }
}
