package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;

public class LabelPtrListView extends HeaderPtrListView {
    private TextView c;

    public LabelPtrListView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        ListView localListView = (ListView) h();
        View localView = LayoutInflater.from(paramContext).inflate(2130903330, localListView, false);
        this.c = ((TextView) localView.findViewById(2131492905));
        this.c.setVisibility(8);
        localListView.addHeaderView(localView, null, false);
        invalidate();
    }

    public void setCountText(String paramString, int paramInt) {
        TextView localTextView = this.c;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        localTextView.setText(String.format(paramString, arrayOfObject));
        if (paramInt == 0) {
            this.c.setVisibility(8);
            return;
        }
        this.c.setVisibility(0);
    }
}

