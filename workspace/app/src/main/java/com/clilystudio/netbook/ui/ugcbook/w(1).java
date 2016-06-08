package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.model.BookSummary;

import java.util.List;

final class w extends A {
    private w(UGCGuideAddBookActivity paramUGCGuideAddBookActivity) {
        super(paramUGCGuideAddBookActivity, 0);
    }

    protected final void a(List<BookSummary> paramList) {
        super.a(paramList);
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        UGCGuideAddBookActivity.a(this.b, UGCGuideAddBookActivity.a(this.b).getText().toString());
    }
}

