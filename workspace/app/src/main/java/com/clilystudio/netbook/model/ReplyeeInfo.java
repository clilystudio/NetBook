
package com.clilystudio.netbook.model;

import java.io.Serializable;

public interface ReplyeeInfo extends Serializable {

    Author getAuthor();

    String getCommentId();

    int getFloor();

    void setAuthor(Author Author1);

    void setCommentId(String String1);

    void setFloor(int int1);
}
