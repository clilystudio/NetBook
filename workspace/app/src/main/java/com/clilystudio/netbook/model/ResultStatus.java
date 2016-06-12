
package com.clilystudio.netbook.model;

public class ResultStatus {

    private String code;
    private String msg;
    private boolean ok;

    public String getCode()
    {
        return code;
    }

    public String getMsg()
    {
        return msg;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setCode(String String1)
    {
        code = String1;
    }

    public void setMsg(String String1)
    {
        msg = String1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
