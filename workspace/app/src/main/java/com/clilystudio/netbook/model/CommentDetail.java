
package com.clilystudio.netbook.model;

public class CommentDetail {

    private PostComment comment;
    private boolean ok;

    public PostComment getComment()
    {
        return comment;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setComment(PostComment PostComment1)
    {
        comment = PostComment1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
