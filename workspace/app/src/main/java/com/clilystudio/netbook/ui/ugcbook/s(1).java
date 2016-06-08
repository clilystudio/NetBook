package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.widget.ax;

import java.util.Calendar;

final class s
        implements ax {
    s(UGCGuideAddBookActivity paramUGCGuideAddBookActivity, UGCGuideAddBookActivity.SearchPromptAdapter paramSearchPromptAdapter) {
    }

    public final void a() {
        UGCGuideAddBookActivity.a(this.b, true);
        String str = String.valueOf(Calendar.getInstance().getTimeInMillis());
        this.a.getFilter().filter(str);
    }
}

