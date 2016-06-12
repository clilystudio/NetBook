
package com.clilystudio.netbook.model;

public class Review extends ReviewSummary {

    private Author author;
    private int commentCount;
    private String content;
    private int rating;
    private String shareLink;

    public Author getAuthor()
    {
        return author;
    }

    public int getCommentCount()
    {
        return commentCount;
    }

    public String getContent()
    {
        return content;
    }

    public int getRating()
    {
        return rating;
    }

    public String getShareLink()
    {
        return shareLink;
    }

    public void setAuthor(Author Author1)
    {
        author = Author1;
    }

    public void setCommentCount(int int1)
    {
        commentCount = int1;
    }

    public void setContent(String String1)
    {
        content = String1;
    }

    public void setRating(int int1)
    {
        rating = int1;
    }

    public void setShareLink(String String1)
    {
        shareLink = String1;
    }
}
