
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class PostBook {

    private String _id;
    private String cover;
    private String title;

    public String getCover()
    {
        return cover;
    }

    public String getFullCover()
    {
        return new StringBuilder().append( ApiService.a ).append( cover ).append( "-covers" ).toString();
    }

    public String getTitle()
    {
        return title;
    }

    public String get_id()
    {
        return _id;
    }

    public void setCover(String String1)
    {
        cover = String1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
