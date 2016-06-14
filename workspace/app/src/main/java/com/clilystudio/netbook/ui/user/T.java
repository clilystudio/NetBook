package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.view.View;
import android.widget.ImageView;

import com.clilystudio.netbook.model.PayConsumeRecord;

final class T implements View.OnClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ PayConsumeRecord.Order b;
    final /* synthetic */ ImageView c;
    final /* synthetic */ View d;
    final /* synthetic */ S e;

    T(S s, int n, PayConsumeRecord.Order order, ImageView imageView, View view) {
        this.e = s;
        this.a = n;
        this.b = order;
        this.c = imageView;
        this.d = view;
    }

    @Override
    public final void onClick(View view) {
        int n = this.a;
        int n2 = PayConsumeActivity.a(this.e.a).getLastVisiblePosition() - PayConsumeActivity.a(this.e.a).getFooterViewsCount();
        int n3 = 0;
        if (n >= n2) {
            PayConsumeActivity.a(this.e.a).smoothScrollToPosition(2 + this.a);
            n3 = 200;
        }
        new Handler().postDelayed(new U(this), n3);
    }
}
