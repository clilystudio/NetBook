package com.clilystudio.netbook.reader.txt;

import android.view.View;
import android.widget.ImageView;

final class S implements View.OnClickListener {
    private /* synthetic */ T_Clazz a;
    private /* synthetic */ ImageView b;
    private /* synthetic */ R_Clazz c;

    S(R_Clazz r, T_Clazz t, ImageView imageView) {
        this.c = r;
        this.a = t;
        this.b = imageView;
    }

    @Override
    public final void onClick(View view) {
        this.a.c();
        R_Clazz.a(this.c, this.b, this.a.b());
    }
}
