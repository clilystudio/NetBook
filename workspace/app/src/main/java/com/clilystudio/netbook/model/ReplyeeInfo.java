package com.clilystudio.netbook.model;

import java.io.Serializable;

public abstract interface ReplyeeInfo extends Serializable {
    public abstract Author getAuthor();

    public abstract void setAuthor(Author paramAuthor);

    public abstract String getCommentId();

    public abstract void setCommentId(String paramString);

    public abstract int getFloor();

    public abstract void setFloor(int paramInt);
}

