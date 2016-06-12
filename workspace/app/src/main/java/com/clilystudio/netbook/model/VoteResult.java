
package com.clilystudio.netbook.model;

public class VoteResult {

    private String code;
    private String msg;
    private boolean ok;
    private int selected;

    public String getCode()
    {
        return code;
    }

    public String getMsg()
    {
        return msg;
    }

    public int getSelected()
    {
        return selected;
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

    public void setSelected(int int1)
    {
        selected = int1;
    }
}
