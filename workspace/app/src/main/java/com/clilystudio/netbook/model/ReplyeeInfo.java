package com.clilystudio.netbook.model;

import java.io.Serializable;

public interface ReplyeeInfo extends Serializable {
    public Author getAuthor();

    public void setAuthor(Author var1);

    public String getCommentId();

    public void setCommentId(String var1);

    public int getFloor();

    public void setFloor(int var1);
}
