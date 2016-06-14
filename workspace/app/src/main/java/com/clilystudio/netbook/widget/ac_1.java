package com.clilystudio.netbook.widget;

import android.view.View;

final class ac implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ LinearListView b;

    ac(LinearListView linearListView, int n) {
        this.b = linearListView;
        this.a = n;
    }

    @Override
    public final void onClick(View view) {
        LinearListView.a(this.b, this.a);
    }
}
