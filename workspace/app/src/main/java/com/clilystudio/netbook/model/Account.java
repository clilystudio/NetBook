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

    public void setCode(String string) {
        this.code = string;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String string) {
        this.token = string;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
