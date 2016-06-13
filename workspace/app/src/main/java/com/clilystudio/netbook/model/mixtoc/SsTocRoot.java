package com.clilystudio.netbook.model.mixtoc;

public class SsTocRoot {
    private String resourceid;
    private SsTocRow[] rows;

    public String getResourceid() {
        return this.resourceid;
    }

    public void setResourceid(String string) {
        this.resourceid = string;
    }

    public SsTocRow[] getRows() {
        return this.rows;
    }

    public void setRows(SsTocRow[] arrssTocRow) {
        this.rows = arrssTocRow;
    }
}
