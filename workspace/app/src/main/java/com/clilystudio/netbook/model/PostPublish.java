package com.clilystudio.netbook.model;

public class PostPublish {
    private String _id;
    private String code;
    private String msg;
    private boolean ok;
    private String postId;

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String paramString) {
        this.msg = paramString;
    }

    public String getPostId() {
        return this.postId;
    }

    public void setPostId(String paramString) {
        this.postId = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

