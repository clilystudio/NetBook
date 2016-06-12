package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R$styleable;

import butterknife.ButterKnife;

public class TopicSectionItem extends DividerSection {

    ImageView mIcon;
    TextView mLabel;
    public TopicSectionItem(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        int int6;
        Object Object5;
        TypedArray TypedArray4;

        LayoutInflater.from(Context1).inflate(2130903232, (ViewGroup) a());
        ButterKnife.inject((View) this);
        TypedArray4 = Context1.obtainStyledAttributes(AttributeSet2, R$styleable.TopicSectionItem);
        Object5 = TypedArray4.getString(0);
        mLabel.setText((CharSequence) Object5);
        int6 = TypedArray4.getResourceId(1, 0);
        mIcon.setImageResource(int6);
        TypedArray4.recycle();
    }
}
