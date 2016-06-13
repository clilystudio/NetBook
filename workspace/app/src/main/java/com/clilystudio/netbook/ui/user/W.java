package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.view.View;
import android.widget.PopupWindow;

final class W
        implements View.OnClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ S b;
    private /* synthetic */ PopupWindow c;

    W(S s, int n, PopupWindow popupWindow) {
        this.b = s;
        this.a = n;
        this.c = popupWindow;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        boolean[] arrbl = S.a(this.b);
        int n = this.a;
        boolean bl = !S.a(this.b)[this.a];
        arrbl[n] = bl;
        this.b.notifyDataSetChanged();
        if (S.a(this.b)[this.a]) {
            new Handler().postDelayed(new X(this), 50);
        }
        this.c.dismiss();
    }
}
