package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

public class LabelPtrListView extends HeaderPtrListView {
    private TextView c;

    public LabelPtrListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ListView listView = (ListView) this.h();
        View view = LayoutInflater.from(context).inflate(R.layout.my_ugc_header_label, (ViewGroup) listView, false);
        this.c = (TextView) view.findViewById(R.id.content);
        this.c.setVisibility(View.GONE);
        listView.addHeaderView(view, null, false);
        this.invalidate();
    }

    public void setCountText(String string, int n) {
        TextView textView = this.c;
        Object[] arrobject = new Object[]{n};
        textView.setText(String.format(string, arrobject));
        if (n == 0) {
            this.c.setVisibility(View.GONE);
            return;
        }
        this.c.setVisibility(View.VISIBLE);
    }
}
