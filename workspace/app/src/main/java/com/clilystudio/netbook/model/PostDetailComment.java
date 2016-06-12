
package com.clilystudio.netbook.model;

public class PostDetailComment {

    private PostComment[] comments;
    private boolean ok;

    public PostComment[] getComments()
    {
        return comments;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setComments(PostComment[] PostComment_1darray1)
    {
        comments = PostComment_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
