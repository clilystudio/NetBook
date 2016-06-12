package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Root implements Serializable {

    private static final long serialVersionUID = 6384383576696578173L;
    private String code;
    private boolean ok;

    public String getCode() {
        return code;
    }

    public void setCode(String String1) {
        code = String1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
