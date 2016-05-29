package com.clilystudio.app.netbook.model;

public class BookHelpList {
    private BookHelpSummary[] helps;
    private boolean ok;

    public BookHelpSummary[] getHelps() {
        return this.helps;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setHelps(BookHelpSummary[] paramArrayOfBookHelpSummary) {
        this.helps = paramArrayOfBookHelpSummary;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.BookHelpList
 * JD-Core Version:    0.6.2
 */