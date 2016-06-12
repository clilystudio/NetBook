
package com.clilystudio.netbook.model;

import java.util.Date;

public class BookGenderRecommend$RecommendBook {

    public BookGenderRecommend$RecommendBook(BookGenderRecommend BookGenderRecommend1)
    {
        this$0 = BookGenderRecommend1;
    }

    private String _id;
    private String author;
    private int chaptersCount;
    private String cover;
    private String lastChapter;
    private int latelyFollower;
    private double retentionRatio;
    private String shortIntro;
    BookGenderRecommend this$0;     // final access specifier removed
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

    public String getLastChapter()
    {
        return lastChapter;
    }

    public int getLatelyFollower()
    {
        return latelyFollower;
    }

    public double getRetentionRatio()
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

    public Date getUpdated()
    {
        return updated;
    }

    public String get_id()
    {
        return _id;
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

    public void setLastChapter(String String1)
    {
        lastChapter = String1;
    }

    public void setLatelyFollower(int int1)
    {
        latelyFollower = int1;
    }

    public void setRetentionRatio(double double1)
    {
        retentionRatio = double1;
    }

    public void setShortIntro(String String1)
    {
        shortIntro = String1;
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
