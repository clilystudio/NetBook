package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.widget.ax;

import java.util.Calendar;

final class s implements ax {
    private /* synthetic */ UGCGuideAddBookActivity$SearchPromptAdapter a;
    private /* synthetic */ UGCGuideAddBookActivity b;

    s(UGCGuideAddBookActivity uGCGuideAddBookActivity, UGCGuideAddBookActivity$SearchPromptAdapter searchPromptAdapter) {
        this.b = uGCGuideAddBookActivity;
        this.a = searchPromptAdapter;
    }

    @Override
    public final void a() {
        UGCGuideAddBookActivity.a(this.b, true);
        String string = String.valueOf(Calendar.getInstance().getTimeInMillis());
        this.a.getFilter().filter(string);
    }
}
