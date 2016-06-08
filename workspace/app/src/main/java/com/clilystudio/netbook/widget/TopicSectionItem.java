package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class TopicSectionItem extends DividerSection {
    ImageView mIcon;
    TextView mLabel;

    public TopicSectionItem(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        LayoutInflater.from(paramContext).inflate(R.layout.home_topic_header_item, a());
        mIcon = (ImageView) findViewById(R.id.icon);
        mLabel = (TextView) findViewById(R.id.label);
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TopicSectionItem);
        String str = localTypedArray.getString(0);
        this.mLabel.setText(str);
        int i = localTypedArray.getResourceId(1, 0);
        this.mIcon.setImageResource(i);
        localTypedArray.recycle();
    }
}

