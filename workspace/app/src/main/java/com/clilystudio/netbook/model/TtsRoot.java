package com.clilystudio.netbook.model;

import com.google.gson.Gson;

public class TtsRoot {
    private TtsResult result;
    private String ret;

    public static TtsRoot getInfoFromJson(String string) {
        try {
            TtsRoot ttsRoot = (TtsRoot) new Gson().fromJson(string, TtsRoot.class);
            return ttsRoot;
        } catch (Exception var1_2) {
            return null;
        }
    }

    public TtsResult getResult() {
        return this.result;
    }

    public void setResult(TtsResult ttsResult) {
        this.result = ttsResult;
    }

    public String getRet() {
        return this.ret;
    }

    public void setRet(String string) {
        this.ret = string;
    }
}
