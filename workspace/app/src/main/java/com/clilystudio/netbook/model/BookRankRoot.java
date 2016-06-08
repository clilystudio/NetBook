package com.clilystudio.netbook.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BookRankRoot {
    private List<BookRankSummary> female;
    private List<BookRankSummary> male;
    private boolean ok;

    private List<BookRankSummary> filterMainList(List<BookRankSummary> paramList) {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
            BookRankSummary localBookRankSummary = (BookRankSummary) localIterator.next();
            if (localBookRankSummary.isCollapse())
                continue;
            localArrayList.add(localBookRankSummary);
        }
        return localArrayList;
    }

    private List<BookRankSummary> filterSubList(List<BookRankSummary> paramList) {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
            BookRankSummary localBookRankSummary = (BookRankSummary) localIterator.next();
            if (!localBookRankSummary.isCollapse())
                continue;
            localArrayList.add(localBookRankSummary);
        }
        return localArrayList;
    }

    public List<BookRankSummary> getFemale() {
        return this.female;
    }

    public void setFemale(List<BookRankSummary> paramList) {
        this.female = paramList;
    }

    public List<BookRankSummary> getMainFemaleList() {
        return filterMainList(this.female);
    }

    public List<BookRankSummary> getMainMaleList() {
        return filterMainList(this.male);
    }

    public List<BookRankSummary> getMale() {
        return this.male;
    }

    public void setMale(List<BookRankSummary> paramList) {
        this.male = paramList;
    }

    public List<BookRankSummary> getSubFemaleList() {
        return filterSubList(this.female);
    }

    public List<BookRankSummary> getSubMaleList() {
        return filterSubList(this.male);
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

