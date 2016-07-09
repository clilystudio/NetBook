package com.clilystudio.netbook.model;

import java.io.Serializable;

public interface ReplyeeInfo extends Serializable {
    Author getAuthor();

    void setAuthor(Author var1);

    String getCommentId();

    void setCommentId(String var1);

    int getFloor();

    void setFloor(int var1);
}
