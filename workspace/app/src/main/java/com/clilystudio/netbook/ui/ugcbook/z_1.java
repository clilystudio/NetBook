package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;

final class z
        implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ y b;

    z(y y2, int n) {
        this.b = y2;
        this.a = n;
    }

    @Override
    public final void onClick(View view) {
        UGCGuideAddBookActivity.a(this.b.a, this.a);
        this.b.notifyDataSetChanged();
    }
}
