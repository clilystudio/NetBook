package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

final class bW implements View$OnClickListener {

    private ReaderResourceFragment a;

    bW(ReaderResourceFragment ReaderResourceFragment1) {
        a = ReaderResourceFragment1;
    }

    public final void onClick(View View1) {
        Intent Intent2 = LocalChapterListActivity.a((Context) a.getActivity(), ReaderResourceFragment.a(a), ReaderResourceFragment.d(a));

        a.startActivity(Intent2);
    }
}
