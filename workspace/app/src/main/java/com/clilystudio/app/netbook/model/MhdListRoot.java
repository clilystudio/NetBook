package com.clilystudio.app.netbook.model;

public class MhdListRoot {
    private int code;
    private String code_msg;
    private MhdInfo[] info;

    public int getCode() {
        return this.code;
    }

    public String getCode_msg() {
        return this.code_msg;
    }

    public MhdInfo[] getInfo() {
        return this.info;
    }

    public void setCode(int paramInt) {
        this.code = paramInt;
    }

    public void setCode_msg(String paramString) {
        this.code_msg = paramString;
    }

    public void setInfo(MhdInfo[] paramArrayOfMhdInfo) {
        this.info = paramArrayOfMhdInfo;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.MhdListRoot
 * JD-Core Version:    0.6.2
 */