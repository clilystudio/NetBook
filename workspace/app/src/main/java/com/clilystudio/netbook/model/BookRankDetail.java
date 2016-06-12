
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class BookRankDetail {

    private String _id;
    private String author;
    private String cat;
    private String cover;
    private int latelyFollower;
    private String retentionRatio;
    private String shortIntro;
    private String title;

    public String getAuthor()
    {
        return author;
    }

    public String getCat()
    {
        return cat;
    }

    public String getCover()
    {
        return cover;
    }

    public String getFullCover()
    {
        return new StringBuilder().append( ApiService.a ).append( cover ).append( "-covers" ).toString();
    }

    public int getLatelyFollower()
    {
        return latelyFollower;
    }

    public String getRetentionRatio()
    {
        return retentionRatio;
    }

    public String getShortIntro()
    {
        return shortIntro;
    }

    public String getTitle()
    {
        return title;
    }

    public String get_id()
    {
        return _id;
    }

    public void setAuthor(String String1)
    {
        author = String1;
    }

    public void setCat(String String1)
    {
        cat = String1;
    }

    public void setCover(String String1)
    {
        cover = String1;
    }

    public void setLatelyFollower(int int1)
    {
        latelyFollower = int1;
    }

    public void setRetentionRatio(String String1)
    {
        retentionRatio = String1;
    }

    public void setShortIntro(String String1)
    {
        shortIntro = String1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
