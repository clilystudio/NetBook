package com.clilystudio.netbook.model;

public class VoteResult {
    private String code;
    private String msg;
    private boolean ok;
    private int selected;

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String string) {
        this.msg = string;
    }

    public int getSelected() {
        return this.selected;
    }

    public void setSelected(int n) {
        this.selected = n;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
