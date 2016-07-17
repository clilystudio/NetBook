package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.util.CommonUtil;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

public class HeaderPtrListView extends PullToRefreshListView {
    public HeaderPtrListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        CommonUtil.addHeaderView(context, this.getRefreshableView());
    }
}
