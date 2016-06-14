package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;

import com.clilystudio.netbook.model.TocSummary;

final class bw implements View.OnClickListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ TocSummary b;
    final /* synthetic */ ReaderMenuFragment c;

    bw(ReaderMenuFragment readerMenuFragment, Activity activity, TocSummary tocSummary) {
        this.c = readerMenuFragment;
        this.a = activity;
        this.b = tocSummary;
    }

    @Override
    public final void onClick(View view) {
        h h2 = new h(this.a);
        h2.e = "\u66f4\u6362\u6765\u6e90\u5c06\u4f1a\u5220\u9664\u4e4b\u524d\u7684\u9884\u8bfb\u7ae0\u8282\uff0c\u662f\u5426\u7ee7\u7eed\uff1f";
        h2.a("\u66f4\u6362", (DialogInterface.OnClickListener) new bx(this)).b("\u53d6\u6d88", null).b();
    }
}
