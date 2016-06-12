
package com.clilystudio.netbook.model;

public class BookHelpList {

    private BookHelpSummary[] helps;
    private boolean ok;

    public BookHelpSummary[] getHelps()
    {
        return helps;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setHelps(BookHelpSummary[] BookHelpSummary_1darray1)
    {
        helps = BookHelpSummary_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
