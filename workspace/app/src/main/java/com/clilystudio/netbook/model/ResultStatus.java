package com.clilystudio.netbook.model;

public class ResultStatus {
    private String code;
    private String msg;
    private boolean ok;

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String paramString) {
        this.msg = paramString;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

