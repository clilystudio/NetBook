package com.clilystudio.netbook.model;

public class BookHelpList {
    private BookHelpSummary[] helps;
    private boolean ok;

    public BookHelpSummary[] getHelps() {
        return this.helps;
    }

    public void setHelps(BookHelpSummary[] arrbookHelpSummary) {
        this.helps = arrbookHelpSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
