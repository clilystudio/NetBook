package com.clilystudio.app.netbook.model;

import java.io.Serializable;

public abstract interface ReplyeeInfo extends Serializable {
    public abstract Author getAuthor();

    public abstract String getCommentId();

    public abstract int getFloor();

    public abstract void setAuthor(Author paramAuthor);

    public abstract void setCommentId(String paramString);

    public abstract void setFloor(int paramInt);
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ReplyeeInfo
 * JD-Core Version:    0.6.2
 */