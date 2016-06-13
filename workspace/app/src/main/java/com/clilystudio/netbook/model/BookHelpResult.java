package com.clilystudio.netbook.model;

public class BookHelpResult {
    private BookHelp help;
    private boolean ok;

    public BookHelp getHelp() {
        return this.help;
    }

    public void setHelp(BookHelp bookHelp) {
        this.help = bookHelp;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
