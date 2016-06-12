package com.clilystudio.netbook.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BookRankRoot {

    private List female;
    private List male;
    private boolean ok;

    private List filterMainList(List List1) {
        Object Object2 = new ArrayList();
        Iterator Iterator3 = List1.iterator();

        while (Iterator3.hasNext()) {
            Object Object4 = (BookRankSummary) Iterator3.next();

            if (((BookRankSummary) Object4).isCollapse())
                continue;
            ((ArrayList) Object2).add(Object4);
        }
        return (List) Object2;
    }

    private List filterSubList(List List1) {
        Object Object2 = new ArrayList();
        Iterator Iterator3 = List1.iterator();

        while (Iterator3.hasNext()) {
            Object Object4 = (BookRankSummary) Iterator3.next();

            if (!((BookRankSummary) Object4).isCollapse())
                continue;
            ((ArrayList) Object2).add(Object4);
        }
        return (List) Object2;
    }

    public List getFemale() {
        return female;
    }

    public void setFemale(List List1) {
        female = List1;
    }

    public List getMainFemaleList() {
        return filterMainList(female);
    }

    public List getMainMaleList() {
        return filterMainList(male);
    }

    public List getMale() {
        return male;
    }

    public void setMale(List List1) {
        male = List1;
    }

    public List getSubFemaleList() {
        return filterSubList(female);
    }

    public List getSubMaleList() {
        return filterSubList(male);
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
