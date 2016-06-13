package com.clilystudio.netbook.model;

public class CodeRoot
        extends Root {
    private String code;

    @Override
    public String getCode() {
        return this.code;
    }

    @Override
    public void setCode(String string) {
        this.code = string;
    }
}
