package com.clilystudio.netbook.model;

public class SyncUploadResult {
    private String code;
    private boolean ok;

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
