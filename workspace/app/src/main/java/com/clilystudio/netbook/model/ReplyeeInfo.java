package com.clilystudio.netbook.model;

import java.io.Serializable;

public interface ReplyeeInfo extends Serializable {

    Author getAuthor();

    void setAuthor(Author Author1);

    String getCommentId();

    void setCommentId(String String1);

    int getFloor();

    void setFloor(int int1);
}
