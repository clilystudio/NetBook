package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;

final class o
        implements View.OnClickListener {
    private /* synthetic */ int a;
    private /* synthetic */ n b;

    o(n n2, int n3) {
        this.b = n2;
        this.a = n3;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(View view) {
        if (AudioBookPlayActivity.b(this.b.a) == null) {
            e.a((Context) this.b.a, "\u64ad\u653e\u5668\u51fa\u9519\u4e86");
            return;
        }
        if (this.a != AudioBookPlayActivity.k(this.b.a)) {
            AudioBookPlayActivity.d(this.b.a, true);
            AudioBookPlayActivity.b(this.b.a, this.a);
            AudioBookPlayActivity.c(this.b.a, AudioBookPlayActivity.k(this.b.a));
        } else if (as.c()) {
            as.h();
        } else {
            AudioBookPlayActivity.b(this.b.a).d();
        }
        this.b.notifyDataSetChanged();
    }
}
