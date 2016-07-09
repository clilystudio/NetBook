package com.clilystudio.netbook.model;

import java.util.ArrayList;
import java.util.List;

public class BookRankRoot {
    private List<BookRankSummary> female;
    private List<BookRankSummary> male;
    private boolean ok;

    private List<BookRankSummary> filterMainList(List<BookRankSummary> list) {
        ArrayList<BookRankSummary> arrayList = new ArrayList<>();
        for (BookRankSummary bookRankSummary : list) {
            if (bookRankSummary.isCollapse()) continue;
            arrayList.add(bookRankSummary);
        }
        return arrayList;
    }

    private List<BookRankSummary> filterSubList(List<BookRankSummary> list) {
        ArrayList<BookRankSummary> arrayList = new ArrayList<>();
        for (BookRankSummary bookRankSummary : list) {
            if (!bookRankSummary.isCollapse()) continue;
            arrayList.add(bookRankSummary);
        }
        return arrayList;
    }

    public List<BookRankSummary> getFemale() {
        return this.female;
    }

    public void setFemale(List<BookRankSummary> list) {
        this.female = list;
    }

    public List<BookRankSummary> getMainFemaleList() {
        return this.filterMainList(this.female);
    }

    public List<BookRankSummary> getMainMaleList() {
        return this.filterMainList(this.male);
    }

    public List<BookRankSummary> getMale() {
        return this.male;
    }

    public void setMale(List<BookRankSummary> list) {
        this.male = list;
    }

    public List<BookRankSummary> getSubFemaleList() {
        return this.filterSubList(this.female);
    }

    public List<BookRankSummary> getSubMaleList() {
        return this.filterSubList(this.male);
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
