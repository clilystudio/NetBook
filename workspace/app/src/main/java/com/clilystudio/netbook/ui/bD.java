package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.widget.ax;

import java.util.Calendar;

final class bD
        implements ax {
    bD(SearchActivity paramSearchActivity, SearchActivity.SearchPromptAdapter paramSearchPromptAdapter) {
    }

    public final void a() {
        String str = String.valueOf(Calendar.getInstance().getTimeInMillis());
        this.a.getFilter().filter(str);
    }
}

