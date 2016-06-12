
package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.Date;

public class TocSource implements Serializable {

    private String _id;
    private String book;
    private int chapterCount;
    private String lastChapter;
    private boolean priority;
    private String source;
    private String sourceId;
    private Date updated;
    private static final long serialVersionUID = -2930289815391625653L;

    public String getBook()
    {
        return book;
    }

    public int getChapterCount()
    {
        return chapterCount;
    }

    public String getFullSource()
    {
        return new StringBuilder().append( source ).append( ".com" ).toString();
    }

    public String getId()
    {
        return _id;
    }

    public String getLastChapter()
    {
        return lastChapter;
    }

    public String getSource()
    {
        return source;
    }

    public String getSourceId()
    {
        return sourceId;
    }

    public Date getUpdated()
    {
        return updated;
    }

    public boolean isPriority()
    {
        return priority;
    }

    public void setBook(String String1)
    {
        book = String1;
    }

    public void setChapterCount(int int1)
    {
        chapterCount = int1;
    }

    public void setId(String String1)
    {
        _id = String1;
    }

    public void setLastChapter(String String1)
    {
        lastChapter = String1;
    }

    public void setPriority(boolean boolean1)
    {
        priority = boolean1;
    }

    public void setSource(String String1)
    {
        source = String1;
    }

    public void setSourceId(String String1)
    {
        sourceId = String1;
    }

    public void setUpdated(Date Date1)
    {
        updated = Date1;
    }
}
