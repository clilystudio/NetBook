package com.clilystudio.netbook.model.mixtoc;

public class SsTocRow {
    private String resourceid;
    private int serialid;
    private String serialname;

    public String getResourceid() {
        return this.resourceid;
    }

    public void setResourceid(String string) {
        this.resourceid = string;
    }

    public int getSerialid() {
        return this.serialid;
    }

    public void setSerialid(int n) {
        this.serialid = n;
    }

    public String getSerialname() {
        return this.serialname;
    }

    public void setSerialname(String string) {
        this.serialname = string;
    }
}
