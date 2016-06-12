
package com.clilystudio.netbook.model;

import java.util.Date;

public class TocSummary {

    private String _id;
    private String host;
    private String lastChapter;
    private String link;
    private String name;
    private String source;
    private Date updated;

    public String getHost()
    {
        return host;
    }

    public String getLastChapter()
    {
        return lastChapter;
    }

    public String getLink()
    {
        return link;
    }

    public String getName()
    {
        return name;
    }

    public String getSource()
    {
        return source;
    }

    public Date getUpdated()
    {
        return updated;
    }

    public String get_id()
    {
        return _id;
    }

    public void setHost(String String1)
    {
        host = String1;
    }

    public void setLastChapter(String String1)
    {
        lastChapter = String1;
    }

    public void setLink(String String1)
    {
        link = String1;
    }

    public void setName(String String1)
    {
        name = String1;
    }

    public void setSource(String String1)
    {
        source = String1;
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
