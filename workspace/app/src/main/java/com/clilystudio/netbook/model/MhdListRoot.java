package com.clilystudio.netbook.model;

public class MhdListRoot {
    private int code;
    private String code_msg;
    private MhdInfo[] info;

    public int getCode() {
        return this.code;
    }

    public void setCode(int n) {
        this.code = n;
    }

    public String getCode_msg() {
        return this.code_msg;
    }

    public void setCode_msg(String string) {
        this.code_msg = string;
    }

    public MhdInfo[] getInfo() {
        return this.info;
    }

    public void setInfo(MhdInfo[] arrmhdInfo) {
        this.info = arrmhdInfo;
    }
}
