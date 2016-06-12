
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.TocSummary;
import uk.me.lewisdeane.ldialogs.h;

final class bw implements View$OnClickListener {

    bw(ReaderMenuFragment ReaderMenuFragment1, Activity Activity2, TocSummary TocSummary3)
    {
        c = ReaderMenuFragment1;
        a = Activity2;
        b = TocSummary3;
    }

    Activity a;     // final access specifier removed
    TocSummary b;     // final access specifier removed
    ReaderMenuFragment c;     // final access specifier removed

    public final void onClick(View View1)
    {
        h h2 = new h( (Context) a );

        h2.e = "\u66F4\u6362\u6765\u6E90\u5C06\u4F1A\u5220\u9664\u4E4B\u524D\u7684\u9884\u8BFB\u7AE0\u8282\uFF0C\u662F\u5426\u7EE7\u7EED\uFF1F";
        h2.a( "\u66F4\u6362", (DialogInterface$OnClickListener) new bx( this ) ).b( "\u53D6\u6D88", null ).b();
    }
}
