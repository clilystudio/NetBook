package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.model.BookSummary;

import java.util.List;

final class w extends A {
    private /* synthetic */ UGCGuideAddBookActivity b;

    private w(UGCGuideAddBookActivity uGCGuideAddBookActivity) {
        this.b = uGCGuideAddBookActivity;
        super(uGCGuideAddBookActivity, 0);
    }

    /* synthetic */ w(UGCGuideAddBookActivity uGCGuideAddBookActivity, byte by) {
        this(uGCGuideAddBookActivity);
    }

    @Override
    protected final void a(List<BookSummary> list) {
        super.a(list);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        super.a((List) object);
    }

    @Override
    protected final void onPreExecute() {
        super.onPreExecute();
        UGCGuideAddBookActivity.a(this.b, UGCGuideAddBookActivity.a(this.b).getText().toString());
    }
}
