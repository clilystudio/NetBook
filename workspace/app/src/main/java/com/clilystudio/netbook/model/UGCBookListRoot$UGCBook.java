
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;
import java.util.Date;

public class UGCBookListRoot$UGCBook {

    private String _id;
    private String author;
    private int bookCount;
    private int collectorCount;
    private String cover;
    private String desc;
    private boolean isDraft;
    private String title;
    private Date updated;

    public String getAuthor()
    {
        return author;
    }

    public int getBookCount()
    {
        return bookCount;
    }

    public int getCollectorCount()
    {
        return collectorCount;
    }

    public String getCover()
    {
        return cover;
    }

    public String getDesc()
    {
        return desc;
    }

    public String getFullCover()
    {
        return new StringBuilder().append( ApiService.a ).append( cover ).append( "-covers" ).toString();
    }

    public String getTitle()
    {
        return title;
    }

    public Date getUpdated()
    {
        return updated;
    }

    public String get_id()
    {
        return _id;
    }

    public boolean isDraft()
    {
        return isDraft;
    }

    public void setAuthor(String String1)
    {
        author = String1;
    }

    public void setBookCount(int int1)
    {
        bookCount = int1;
    }

    public void setCollectorCount(int int1)
    {
        collectorCount = int1;
    }

    public void setCover(String String1)
    {
        cover = String1;
    }

    public void setDesc(String String1)
    {
        desc = String1;
    }

    public void setIsDraft(boolean boolean1)
    {
        isDraft = boolean1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void setUpdated(Date Date1)
    {
        updated = Date1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
