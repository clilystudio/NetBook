package com.clilystudio.netbook.model;

public class MhdListRoot {
    private int code;
    private String code_msg;
    private MhdInfo[] info;

    public int getCode() {
        return this.code;
    }

    public void setCode(int paramInt) {
        this.code = paramInt;
    }

    public String getCode_msg() {
        return this.code_msg;
    }

    public void setCode_msg(String paramString) {
        this.code_msg = paramString;
    }

    public MhdInfo[] getInfo() {
        return this.info;
    }

    public void setInfo(MhdInfo[] paramArrayOfMhdInfo) {
        this.info = paramArrayOfMhdInfo;
    }
}

