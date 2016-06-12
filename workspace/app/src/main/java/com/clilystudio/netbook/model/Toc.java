
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Toc implements Serializable {

    private String _id;
    private ChapterLink[] chapters;
    private String host;
    private String name;
    private static final long serialVersionUID = -3277489999990478661L;
    private boolean realChapter = true;

    public ChapterLink[] getChapters()
    {
        return chapters;
    }

    public String getHost()
    {
        return host;
    }

    public String getName()
    {
        return name;
    }

    public String get_id()
    {
        return _id;
    }

    public boolean isRealChapter()
    {
        return realChapter;
    }

    public void setChapters(ChapterLink[] ChapterLink_1darray1)
    {
        chapters = ChapterLink_1darray1;
    }

    public void setHost(String String1)
    {
        host = String1;
    }

    public void setName(String String1)
    {
        name = String1;
    }

    public void setRealChapter(boolean boolean1)
    {
        realChapter = boolean1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
