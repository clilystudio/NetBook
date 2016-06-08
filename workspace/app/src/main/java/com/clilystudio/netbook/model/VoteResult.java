package com.clilystudio.netbook.model;

public class VoteResult {
    private String code;
    private String msg;
    private boolean ok;
    private int selected;

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

    public int getSelected() {
        return this.selected;
    }

    public void setSelected(int paramInt) {
        this.selected = paramInt;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

