package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class PostBook {
    private String _id;
    private String cover;
    private String title;

    public String getCover() {
        return this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
    }

    public String getFullCover() {
        return ApiService.a + this.cover + "-covers";
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
