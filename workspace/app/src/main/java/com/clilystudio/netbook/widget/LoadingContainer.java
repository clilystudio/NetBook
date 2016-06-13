package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.clilystudio.netbook.R$styleable;

public class LoadingContainer
        extends FrameLayout {
    private final View b;
    private final View c;
    private View a;

    public LoadingContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.LoadingContainer);
        int n = typedArray.getResourceId(0, 2130903324);
        int n2 = typedArray.getResourceId(1, 2130903324);
        typedArray.recycle();
        this.b = LayoutInflater.from(context).inflate(n, (ViewGroup) this, false);
        this.c = LayoutInflater.from(context).inflate(n2, (ViewGroup) this, false);
    }

    public final void a() {
        this.b.setVisibility(8);
        this.c.setVisibility(8);
        this.a.setVisibility(0);
    }

    public final void b() {
        this.b.setVisibility(0);
        this.c.setVisibility(8);
        this.a.setVisibility(8);
    }

    public final void c() {
        this.b.setVisibility(8);
        this.c.setVisibility(0);
        this.a.setVisibility(8);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.getChildCount() != 1) {
            throw new RuntimeException("You must set one content child!");
        }
        this.a = this.getChildAt(0);
        this.addView(this.b);
        this.addView(this.c);
        this.a();
    }
}
