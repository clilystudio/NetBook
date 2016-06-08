package com.clilystudio.netbook.ui;

import android.view.View;

import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;

final class o
        implements View.OnClickListener {
    o(n paramn, int paramInt) {
    }

    public final void onClick(View paramView) {
        if (AudioBookPlayActivity.b(this.b.a) == null) {
            e.a(this.b.a, "播放器出错了");
            return;
        }
        if (this.a != AudioBookPlayActivity.k(this.b.a)) {
            AudioBookPlayActivity.d(this.b.a, true);
            AudioBookPlayActivity.b(this.b.a, this.a);
            AudioBookPlayActivity.c(this.b.a, AudioBookPlayActivity.k(this.b.a));
        }
        while (true) {
            this.b.notifyDataSetChanged();
            return;
            if (as.c()) {
                as.h();
                continue;
            }
            AudioBookPlayActivity.b(this.b.a).d();
        }
    }
}

