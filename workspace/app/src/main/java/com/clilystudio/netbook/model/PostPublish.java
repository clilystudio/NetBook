package com.clilystudio.netbook.model;

public class PostPublish {

    private String _id;
    private String code;
    private String msg;
    private boolean ok;
    private String postId;

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

    public String getPostId() {
        return postId;
    }

    public void setPostId(String String1) {
        postId = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
