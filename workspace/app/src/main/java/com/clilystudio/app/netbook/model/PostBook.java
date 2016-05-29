package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;

public class PostBook {
    private String _id;
    private String cover;
    private String title;

    public String getCover() {
        return this.cover;
    }

    public String getFullCover() {
        return ApiService.a + this.cover + "-covers";
    }

    public String getTitle() {
        return this.title;
    }

    public String get_id() {
        return this._id;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.PostBook
 * JD-Core Version:    0.6.2
 */