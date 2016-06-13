package com.clilystudio.netbook.model;

public class IKanshuUrlResult {
    private String[] links;
    private boolean ok;

    public String[] getLinks() {
        return this.links;
    }

    public void setLinks(String[] arrstring) {
        this.links = arrstring;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
