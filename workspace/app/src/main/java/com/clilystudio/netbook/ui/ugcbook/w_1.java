package com.clilystudio.netbook.ui.ugcbook;

import java.util.List;

final class w extends A {

    private UGCGuideAddBookActivity b;

    w(UGCGuideAddBookActivity UGCGuideAddBookActivity1, byte byte2) {
        this(UGCGuideAddBookActivity1);
    }

    private w(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        super(UGCGuideAddBookActivity1, (byte) 0);
        b = UGCGuideAddBookActivity1;
    }

    protected final void a(List List1) {
        super.a(List1);
    }

    protected final void onPostExecute(Object Object1) {
        super.a((List) Object1);
    }

    protected final void onPreExecute() {
        super.onPreExecute();
        UGCGuideAddBookActivity.a(b, UGCGuideAddBookActivity.a(b).getText().toString());
    }
}
