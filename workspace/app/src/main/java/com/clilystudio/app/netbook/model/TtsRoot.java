package com.clilystudio.app.netbook.model;

import com.google.gson.Gson;

public class TtsRoot {
    private TtsRoot.TtsResult result;
    private String ret;

    public static TtsRoot getInfoFromJson(String paramString) {
        try {
            TtsRoot localTtsRoot = (TtsRoot) new Gson().fromJson(paramString, TtsRoot.class);
            return localTtsRoot;
        } catch (Exception localException) {
        }
        return null;
    }

    public TtsRoot.TtsResult getResult() {
        return this.result;
    }

    public String getRet() {
        return this.ret;
    }

    public void setResult(TtsRoot.TtsResult paramTtsResult) {
        this.result = paramTtsResult;
    }

    public void setRet(String paramString) {
        this.ret = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.TtsRoot
 * JD-Core Version:    0.6.2
 */