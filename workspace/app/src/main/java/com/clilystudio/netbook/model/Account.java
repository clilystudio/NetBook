package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Account implements Serializable {

    private static final long serialVersionUID = 7268031855566891017L;
    private String code;
    private boolean ok;
    private String token;
    private User user;

    public String getCode() {
        return code;
    }

    public void setCode(String String1) {
        code = String1;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String String1) {
        token = String1;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User User1) {
        user = User1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
