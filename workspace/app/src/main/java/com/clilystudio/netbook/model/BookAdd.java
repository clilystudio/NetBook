package com.clilystudio.netbook.model;

public class BookAdd {
    private String book;
    private String code;
    private boolean ok;

    public String getBook() {
        return this.book;
    }

    public void setBook(String string) {
        this.book = string;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
