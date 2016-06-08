package com.clilystudio.netbook.reader;

import android.view.View;

import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.widget.j;

final class bF
        implements View.OnClickListener {
    private ChineseAllPromRoot a;

    public bF(ReaderMixActivity paramReaderMixActivity, ChineseAllPromRoot paramChineseAllPromRoot) {
        this.a = paramChineseAllPromRoot;
    }

    public final void onClick(View paramView) {
        if ((this.a != null) && (this.a.getProm() != null)) {
            String str = this.a.getProm().getLink();
            new j(this.b, str).a();
        }
    }
}

