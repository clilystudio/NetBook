package com.clilystudio.netbook.model;

public class VoteResult {

    private String code;
    private String msg;
    private boolean ok;
    private int selected;

    public String getCode() {
        return code;
    }

    public void setCode(String String1) {
        code = String1;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String String1) {
        msg = String1;
    }

    public int getSelected() {
        return selected;
    }

    public void setSelected(int int1) {
        selected = int1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
