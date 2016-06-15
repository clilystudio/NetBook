package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ShareWarningView extends RelativeLayout {
    ImageView mClose;
    TextView mContent;
    Button mNegative;
    Button mPositive;
    private aB a;
    private View.OnClickListener b;

    public ShareWarningView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new aA(this);
        this.setPadding(0, 0, 0, a.a(context, 22.0f));
        this.setBackgroundColor(-1);
        LayoutInflater.from(context).inflate(2130903393, (ViewGroup) this);
        this.mClose = (ImageView) findViewById(2131493987);
        this.mNegative = (Button) findViewById(2131493988);
        this.mPositive = (Button) findViewById(2131493989);
        this.mContent = (TextView) findViewById(2131492905);
        this.mNegative.setOnClickListener(this.b);
        this.mClose.setOnClickListener(this.b);
    }

    static /* synthetic */ aB a(ShareWarningView shareWarningView) {
        return shareWarningView.a;
    }

    public void setContentText(String string) {
        this.mContent.setText(string);
    }

    public void setOnCloseListener(aB aB2) {
        this.a = aB2;
    }

    public void setPositiveListener(View.OnClickListener onClickListener) {
        this.mPositive.setOnClickListener(onClickListener);
    }
}
