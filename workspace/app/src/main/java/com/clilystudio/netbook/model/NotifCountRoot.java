
package com.clilystudio.netbook.model;

import java.util.Date;

public class NotifCountRoot extends Root {

    private int important;
    private Date lastReadImportantTime;
    private Date lastReadUnimportantTime;
    private int unimportant;

    public int getImportant()
    {
        return important;
    }

    public Date getLastReadImportantTime()
    {
        return lastReadImportantTime;
    }

    public Date getLastReadUnimportantTime()
    {
        return lastReadUnimportantTime;
    }

    public int getUnimportant()
    {
        return unimportant;
    }

    public void setImportant(int int1)
    {
        important = int1;
    }

    public void setLastReadImportantTime(Date Date1)
    {
        lastReadImportantTime = Date1;
    }

    public void setLastReadUnimportantTime(Date Date1)
    {
        lastReadUnimportantTime = Date1;
    }

    public void setUnimportant(int int1)
    {
        unimportant = int1;
    }
}
