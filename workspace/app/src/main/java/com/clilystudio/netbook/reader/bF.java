package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.widget.j;

final class bF implements View$OnClickListener {

    private ChineseAllPromRoot a;
    private ReaderMixActivity b;
    public bF(ReaderMixActivity ReaderMixActivity1, ChineseAllPromRoot ChineseAllPromRoot2) {
        b = ReaderMixActivity1;
        a = ChineseAllPromRoot2;
    }

    public final void onClick(View View1) {
        if (a != null && a.getProm() != null) {
            String String2 = a.getProm().getLink();

            new j((Context) b, String2).a();
        }
    }
}
