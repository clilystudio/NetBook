package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Root
        implements Serializable {
    private static final long serialVersionUID = 6384383576696578173L;
    private String code;
    private boolean ok;

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

