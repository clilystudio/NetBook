
package com.clilystudio.netbook.model;

public class MhdListRoot {

    private int code;
    private String code_msg;
    private MhdInfo[] info;

    public int getCode()
    {
        return code;
    }

    public String getCode_msg()
    {
        return code_msg;
    }

    public MhdInfo[] getInfo()
    {
        return info;
    }

    public void setCode(int int1)
    {
        code = int1;
    }

    public void setCode_msg(String String1)
    {
        code_msg = String1;
    }

    public void setInfo(MhdInfo[] MhdInfo_1darray1)
    {
        info = MhdInfo_1darray1;
    }
}
