
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Account implements Serializable {

    private String code;
    private boolean ok;
    private String token;
    private User user;
    private static final long serialVersionUID = 7268031855566891017L;

    public String getCode()
    {
        return code;
    }

    public String getToken()
    {
        return token;
    }

    public User getUser()
    {
        return user;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setCode(String String1)
    {
        code = String1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setToken(String String1)
    {
        token = String1;
    }

    public void setUser(User User1)
    {
        user = User1;
    }
}
