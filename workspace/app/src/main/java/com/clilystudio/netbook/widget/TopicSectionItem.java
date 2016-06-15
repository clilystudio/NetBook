package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.R$styleable;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class TopicSectionItem extends DividerSection {
    ImageView mIcon;
    TextView mLabel;

    public TopicSectionItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(2130903232, (ViewGroup) this.a());
        this.mIcon = (ImageView) findViewById( 2131493028);
        this.mLabel = (TextView) findViewById( 2131493515);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.TopicSectionItem);
        String string = typedArray.getString(R.styleable.TopicSectionItem_label);
        this.mLabel.setText(string);
        int n = typedArray.getResourceId(R.styleable.TopicSectionItem_icona, 0);
        this.mIcon.setImageResource(n);
        typedArray.recycle();
    }
}
