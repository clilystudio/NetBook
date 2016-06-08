package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Account
        implements Serializable {
    private static final long serialVersionUID = 7268031855566891017L;
    private String code;
    private boolean ok;
    private String token;
    private User user;

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String paramString) {
        this.token = paramString;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User paramUser) {
        this.user = paramUser;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

