package com.clilystudio.netbook.model.mixtoc;

public class SsTocRoot {
    private String resourceid;
    private SsTocRow[] rows;

    public String getResourceid() {
        return this.resourceid;
    }

    public void setResourceid(String paramString) {
        this.resourceid = paramString;
    }

    public SsTocRow[] getRows() {
        return this.rows;
    }

    public void setRows(SsTocRow[] paramArrayOfSsTocRow) {
        this.rows = paramArrayOfSsTocRow;
    }
}

