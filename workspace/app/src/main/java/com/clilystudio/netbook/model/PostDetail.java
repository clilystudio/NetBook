
package com.clilystudio.netbook.model;

public class PostDetail {

    private boolean ok;
    private Post post;

    public Post getPost()
    {
        return post;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setPost(Post Post1)
    {
        post = Post1;
    }
}
