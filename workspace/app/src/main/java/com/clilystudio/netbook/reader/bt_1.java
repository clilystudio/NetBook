package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.view.View;

final class bt
        implements View.OnClickListener {
    final /* synthetic */ ReaderMenuFragment a;

    bt(ReaderMenuFragment readerMenuFragment) {
        this.a = readerMenuFragment;
    }

    @Override
    public final void onClick(View view) {
        if (!ReaderMenuFragment.j(this.a).isApk()) {
            ReaderMenuFragment.j(this.a).onAdClick(view);
            return;
        }
        h h2 = new h(this.a.getActivity()).a(2131034371);
        h2.e = "\u662f\u5426\u4e0b\u8f7d" + ReaderMenuFragment.j(this.a).getTitle() + "(\u5efa\u8bae\u4f7f\u7528WIFI\u4e0b\u8f7d)\uff1f";
        h2.a(true).a("\u786e\u8ba4", (DialogInterface.OnClickListener) new bv(this, view)).b("\u53d6\u6d88", (DialogInterface.OnClickListener) new bu(this)).b();
    }
}
