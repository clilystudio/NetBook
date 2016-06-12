
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class RecommendUgcRoot$RecommendUGC {

    private String author;
    private int bookCount;
    private int collectorCount;
    private String cover;
    private String desc;
    private String id;
    private String title;

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

    public String getId()
    {
        return id;
    }

    public String getTitle()
    {
        return title;
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

    public void setId(String String1)
    {
        id = String1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }
}
