
package com.clilystudio.netbook.model;

import java.util.Date;

public class RemoteBookShelf$Book {

    public RemoteBookShelf$Book(RemoteBookShelf RemoteBookShelf1)
    {
        this$0 = RemoteBookShelf1;
    }

    private String _id;
    private String author;
    private int chaptersCount;
    private String cover;
    private boolean hasCp;
    private String lastChapter;
    RemoteBookShelf this$0;     // final access specifier removed
    private String title;
    private Date updated;

    public String getAuthor()
    {
        return author;
    }

    public int getChaptersCount()
    {
        return chaptersCount;
    }

    public String getCover()
    {
        return cover;
    }

    public String getId()
    {
        return _id;
    }

    public String getLastChapter()
    {
        return lastChapter;
    }

    public String getTitle()
    {
        return title;
    }

    public Date getUpdated()
    {
        return updated;
    }

    public boolean isHasCp()
    {
        return hasCp;
    }

    public void setAuthor(String String1)
    {
        author = String1;
    }

    public void setChaptersCount(int int1)
    {
        chaptersCount = int1;
    }

    public void setCover(String String1)
    {
        cover = String1;
    }

    public void setHasCp(boolean boolean1)
    {
        hasCp = boolean1;
    }

    public void setId(String String1)
    {
        _id = String1;
    }

    public void setLastChapter(String String1)
    {
        lastChapter = String1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void setUpdated(Date Date1)
    {
        updated = Date1;
    }
}
