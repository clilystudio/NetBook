package com.clilystudio.netbook.model;

public class PurchaseChapterResult {
    private String chapterId;
    private String code;
    private String key;
    private boolean ok;

    public String getChapterId() {
        return this.chapterId;
    }

    public void setChapterId(String string) {
        this.chapterId = string;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String string) {
        this.key = string;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
