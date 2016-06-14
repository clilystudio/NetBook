package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.ListView;

public class ScrollLoadListView extends ListView
        implements AbsListView.OnScrollListener {
    private av a;
    private boolean b;

    public ScrollLoadListView(Context context) {
        super(context);
        this.setOnScrollListener(this);
    }

    public ScrollLoadListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.setOnScrollListener(this);
    }

    public ScrollLoadListView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.setOnScrollListener(this);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onScroll(AbsListView absListView, int n, int n2, int n3) {
        if (this.a != null) {
            boolean bl = n3 > 0 && n + n2 >= n3 - 1;
            this.b = bl;
        }
    }

    @Override
    public void onScrollStateChanged(AbsListView absListView, int n) {
        if (this.a != null && this.b && n == 0) {
            this.a.a();
        }
    }

    public void setOnLastItemListener(av av2) {
        this.a = av2;
    }
}
