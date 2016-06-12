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
        return cover;
    }

    public void setCover(String String1) {
        cover = String1;
    }

    public String getFullCover() {
        return new StringBuilder().append(ApiService.a).append(cover).toString();
    }

    public String[] getIds() {
        String[] String_1darray1 = new String[3];

        String_1darray1[0] = _id;
        String_1darray1[1] = monthRank;
        String_1darray1[2] = totalRank;
        return String_1darray1;
    }

    public String getMonthRank() {
        return monthRank;
    }

    public void setMonthRank(String String1) {
        monthRank = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public String getTotalRank() {
        return totalRank;
    }

    public void setTotalRank(String String1) {
        totalRank = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }

    public boolean isCollapse() {
        return collapse;
    }

    public void setCollapse(boolean boolean1) {
        collapse = boolean1;
    }
}
