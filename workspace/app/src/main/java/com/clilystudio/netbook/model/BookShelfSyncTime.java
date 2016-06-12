
package com.clilystudio.netbook.model;

import java.util.Date;

public class BookShelfSyncTime {

    private Date bookshelfUpdated;
    private String code;
    private boolean ok;

    public Date getBookshelfUpdated()
    {
        return bookshelfUpdated;
    }

    public String getCode()
    {
        return code;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBookshelfUpdated(Date Date1)
    {
        bookshelfUpdated = Date1;
    }

    public void setCode(String String1)
    {
        code = String1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
