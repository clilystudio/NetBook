
package com.clilystudio.netbook.model;

public class CommonReplyeeInfo implements ReplyeeInfo {

    public CommonReplyeeInfo(String String1, Author Author2, int int3)
    {
        _id = String1;
        author = Author2;
        floor = int3;
    }

    private String _id;
    private Author author;
    private int floor;

    public CommonReplyeeInfo()
    {
    }

    public Author getAuthor()
    {
        return author;
    }

    public String getCommentId()
    {
        return _id;
    }

    public int getFloor()
    {
        return floor;
    }

    public void setAuthor(Author Author1)
    {
        author = Author1;
    }

    public void setCommentId(String String1)
    {
        _id = String1;
    }

    public void setFloor(int int1)
    {
        floor = int1;
    }
}
