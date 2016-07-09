package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.hpay100.a.a;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

public class HeaderPtrListView extends PullToRefreshListView {
    public HeaderPtrListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a.a(context, this.getRefreshableView());
    }
}
