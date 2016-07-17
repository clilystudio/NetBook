package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class BookRankSummary {
    private String _id;
    private boolean collapse;
    private String cover;
    private String monthRank;
    private String title;
    private String totalRank;

    public String getCover() {
        return this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
    }

    public String getFullCover() {
        return ApiService.a + this.cover;
    }

    public String[] getIds() {
        return new String[]{this._id, this.monthRank, this.totalRank};
    }

    public String getMonthRank() {
        return this.monthRank;
    }

    public void setMonthRank(String string) {
        this.monthRank = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public String getTotalRank() {
        return this.totalRank;
    }

    public void setTotalRank(String string) {
        this.totalRank = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public boolean isCollapse() {
        return this.collapse;
    }

    public void setCollapse(boolean bl) {
        this.collapse = bl;
    }
}
