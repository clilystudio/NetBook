package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.widget.j;

final class bF implements View.OnClickListener {
    private ChineseAllPromRoot a;
    private /* synthetic */ ReaderMixActivity b;

    public bF(ReaderMixActivity readerMixActivity, ChineseAllPromRoot chineseAllPromRoot) {
        this.b = readerMixActivity;
        this.a = chineseAllPromRoot;
    }

    @Override
    public final void onClick(View view) {
        if (this.a != null && this.a.getProm() != null) {
            String string = this.a.getProm().getLink();
            new j((Context) this.b, string).a();
        }
    }
}
