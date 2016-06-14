package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.view.View;

final class bW implements View.OnClickListener {
    private /* synthetic */ ReaderResourceFragment a;

    bW(ReaderResourceFragment readerResourceFragment) {
        this.a = readerResourceFragment;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = LocalChapterListActivity.a(this.a.getActivity(), ReaderResourceFragment.a(this.a), ReaderResourceFragment.d(this.a));
        this.a.startActivity(intent);
    }
}
