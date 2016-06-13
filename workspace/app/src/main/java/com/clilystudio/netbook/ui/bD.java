package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.widget.ax;

import java.util.Calendar;

final class bD
        implements ax {
    private /* synthetic */ SearchActivity$SearchPromptAdapter a;

    bD(SearchActivity searchActivity, SearchActivity$SearchPromptAdapter searchPromptAdapter) {
        this.a = searchPromptAdapter;
    }

    @Override
    public final void a() {
        String string = String.valueOf(Calendar.getInstance().getTimeInMillis());
        this.a.getFilter().filter(string);
    }
}
