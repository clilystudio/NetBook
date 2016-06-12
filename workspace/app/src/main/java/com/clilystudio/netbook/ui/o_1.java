package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;

final class o implements View$OnClickListener {

    private int a;
    private n b;
    o(n n1, int int2) {
        b = n1;
        a = int2;
    }

    public final void onClick(View View1) {
        if (AudioBookPlayActivity.b(b.a) == null)
            e.a((Context) b.a, "\u64AD\u653E\u5668\u51FA\u9519\u4E86");
        else {
            if (a != AudioBookPlayActivity.k(b.a)) {
                AudioBookPlayActivity.d(b.a, true);
                AudioBookPlayActivity.b(b.a, a);
                AudioBookPlayActivity.c(b.a, AudioBookPlayActivity.k(b.a));
            } else if (as.c())
                as.h();
            else
                AudioBookPlayActivity.b(b.a).d();
            b.notifyDataSetChanged();
        }
    }
}
