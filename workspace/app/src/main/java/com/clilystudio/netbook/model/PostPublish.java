
package com.clilystudio.netbook.model;

public class PostPublish {

    private String _id;
    private String code;
    private String msg;
    private boolean ok;
    private String postId;

    public String getCode()
    {
        return code;
    }

    public String getMsg()
    {
        return msg;
    }

    public String getPostId()
    {
        return postId;
    }

    public String get_id()
    {
        return _id;
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

    public void setPostId(String String1)
    {
        postId = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
