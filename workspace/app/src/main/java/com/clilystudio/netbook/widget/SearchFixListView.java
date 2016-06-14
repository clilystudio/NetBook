package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ListView;

public class SearchFixListView extends ListView {
    public SearchFixListView(Context context) {
        super(context);
    }

    public SearchFixListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SearchFixListView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        try {
            super.dispatchDraw(canvas);
            return;
        } catch (IndexOutOfBoundsException var2_2) {
            var2_2.printStackTrace();
            return;
        }
    }
}
