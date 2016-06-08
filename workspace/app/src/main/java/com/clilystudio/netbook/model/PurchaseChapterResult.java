package com.clilystudio.netbook.model;

public class PurchaseChapterResult {
    private String chapterId;
    private String code;
    private String key;
    private boolean ok;

    public String getChapterId() {
        return this.chapterId;
    }

    public void setChapterId(String paramString) {
        this.chapterId = paramString;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String paramString) {
        this.key = paramString;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

