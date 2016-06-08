package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ShareWarningView extends RelativeLayout {
    ImageView mClose;
    TextView mContent;
    Button mNegative;
    Button mPositive;
    private aB a;
    private View.OnClickListener b = new aA(this);

    public ShareWarningView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        setPadding(0, 0, 0, a.a(paramContext, 22.0F));
        setBackgroundColor(-1);
        LayoutInflater.from(paramContext).inflate(2130903393, this);
        mClose = (ImageView) findViewById(R.id.close);
        mContent = (TextView) findViewById(R.id.content);
        mNegative = (Button) findViewById(R.id.negative);
        mPositive = (Button) findViewById(R.id.positive);
        this.mNegative.setOnClickListener(this.b);
        this.mClose.setOnClickListener(this.b);
    }

    public void setContentText(String paramString) {
        this.mContent.setText(paramString);
    }

    public void setOnCloseListener(aB paramaB) {
        this.a = paramaB;
    }

    public void setPositiveListener(View.OnClickListener paramOnClickListener) {
        this.mPositive.setOnClickListener(paramOnClickListener);
    }
}

