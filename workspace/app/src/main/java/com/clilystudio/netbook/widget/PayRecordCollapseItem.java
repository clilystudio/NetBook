package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class PayRecordCollapseItem extends LinearLayout {
    LinearLayout mItemContainer;

    public PayRecordCollapseItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void a(String[] arrstring, int n) {
        this.mItemContainer.removeAllViews();
        LayoutInflater layoutInflater = LayoutInflater.from(this.getContext());
        for (String string : arrstring) {
            TextView textView = (TextView) layoutInflater.inflate(R.layout.pay_record_sub_item, (ViewGroup) this.mItemContainer, false);
            textView.setText(string);
            this.mItemContainer.addView(textView);
        }
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mItemContainer = (LinearLayout) findViewById(R.id.item_container);
    }
}
