package com.clilystudio.netbook.model;

public class BookHelpList {
    private BookHelpSummary[] helps;
    private boolean ok;

    public BookHelpSummary[] getHelps() {
        return this.helps;
    }

    public void setHelps(BookHelpSummary[] paramArrayOfBookHelpSummary) {
        this.helps = paramArrayOfBookHelpSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

