package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;

import com.clilystudio.netbook.R;

public class LoadingContainer extends FrameLayout {
    private final View b;
    private final View c;
    private View a;

    public LoadingContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.LoadingContainer);
        int n = typedArray.getResourceId(R.styleable.LoadingContainer_emptyLayout, R.layout.loading_container_default_layout);
        int n2 = typedArray.getResourceId(R.styleable.LoadingContainer_loadingLayout, R.layout.loading_container_default_layout);
        typedArray.recycle();
        this.b = LayoutInflater.from(context).inflate(n, this, false);
        this.c = LayoutInflater.from(context).inflate(n2, this, false);
    }

    public final void a() {
        this.b.setVisibility(View.GONE);
        this.c.setVisibility(View.GONE);
        this.a.setVisibility(View.VISIBLE);
    }

    public final void b() {
        this.b.setVisibility(View.VISIBLE);
        this.c.setVisibility(View.GONE);
        this.a.setVisibility(View.GONE);
    }

    public final void c() {
        this.b.setVisibility(View.GONE);
        this.c.setVisibility(View.VISIBLE);
        this.a.setVisibility(View.GONE);
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
