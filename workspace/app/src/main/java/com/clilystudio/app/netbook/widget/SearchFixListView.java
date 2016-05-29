package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ListView;

public class SearchFixListView extends ListView {
    public SearchFixListView(Context paramContext) {
        super(paramContext);
    }

    public SearchFixListView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public SearchFixListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
        super(paramContext, paramAttributeSet, paramInt);
    }

    protected void dispatchDraw(Canvas paramCanvas) {
        try {
            super.dispatchDraw(paramCanvas);
            return;
        } catch (IndexOutOfBoundsException localIndexOutOfBoundsException) {
            localIndexOutOfBoundsException.printStackTrace();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.SearchFixListView
 * JD-Core Version:    0.6.2
 */