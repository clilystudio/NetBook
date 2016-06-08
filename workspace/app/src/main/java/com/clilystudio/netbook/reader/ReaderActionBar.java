package com.clilystudio.netbook.reader;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ReaderActionBar extends RelativeLayout {
    private View a;
    private com.umeng.update.a b;
    private bZ c;
    private TextView d;
    private ImageView e;
    private TextView f;
    private TextView g;
    private View h;
    private View i;
    private View j;
    private TextView k;

    public ReaderActionBar(Context paramContext) {
        super(paramContext);
    }

    public ReaderActionBar(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public ReaderActionBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
        super(paramContext, paramAttributeSet, paramInt);
    }

    public final void a() {
        if (this.c.h()) {
            this.d.setText(2131034422);
            this.e.setImageResource(2130837898);
            return;
        }
        this.d.setText(2131034420);
        this.e.setImageResource(2130837897);
    }

    public final void a(boolean paramBoolean) {
        RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (paramBoolean)
            localLayoutParams.setMargins(0, am.k(getContext()), 0, 0);
        while (true) {
            setLayoutParams(localLayoutParams);
            return;
            localLayoutParams.setMargins(0, 0, 0, 0);
        }
    }

    public final TextView b() {
        return this.k;
    }

    public final void b(boolean paramBoolean) {
        TextView localTextView = (TextView) findViewById(2131493889);
        if (paramBoolean) {
            localTextView.setText(2131034451);
            return;
        }
        localTextView.setText(2131034452);
    }

    public final void c(boolean paramBoolean) {
        this.a.setVisibility(8);
    }

    public final void d(boolean paramBoolean) {
        this.h.setVisibility(8);
    }

    public final void e(boolean paramBoolean) {
        this.j.setVisibility(8);
    }

    public final void f(boolean paramBoolean) {
        View localView = this.i;
        if (paramBoolean) ;
        for (int m = 0; ; m = 4) {
            localView.setVisibility(m);
            return;
        }
    }

    public final void g(boolean paramBoolean) {
        View localView = findViewById(2131493893);
        if (paramBoolean) ;
        for (int m = 0; ; m = 8) {
            localView.setVisibility(m);
            return;
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
        localLayoutParams.setMargins(0, am.k(getContext()), 0, 0);
        setLayoutParams(localLayoutParams);
        ah localah = new ah(this);
        this.f = ((TextView) findViewById(2131493882));
        this.g = ((TextView) findViewById(2131493859));
        if (!com.arcsoft.hpay100.a.a.r(getContext(), "switch_xunfei_read"))
            this.g.setVisibility(8);
        this.h = findViewById(2131493861);
        this.i = findViewById(2131493864);
        this.d = ((TextView) findViewById(2131493887));
        this.e = ((ImageView) findViewById(2131493886));
        this.a = findViewById(2131493891);
        this.j = findViewById(2131493862);
        this.k = ((TextView) findViewById(2131493894));
        this.g.setOnClickListener(localah);
        this.h.setOnClickListener(localah);
        this.j.setOnClickListener(localah);
        this.a.setOnClickListener(localah);
        findViewById(2131493893).setOnClickListener(localah);
        findViewById(2131493881).setOnClickListener(localah);
        findViewById(2131493890).setOnClickListener(localah);
        findViewById(2131493892).setOnClickListener(localah);
        findViewById(2131493888).setOnClickListener(localah);
        findViewById(2131493860).setOnClickListener(localah);
        findViewById(2131493885).setOnClickListener(new ai(this));
    }

    public void setChapterLink(String paramString) {
        if ((paramString == null) || ("".equals(paramString))) {
            g(false);
            return;
        }
        g(true);
        this.k.setText(paramString);
    }

    public void setOnBtnClickListener$7ead76dc(com.umeng.update.a parama) {
        this.b = parama;
    }

    public void setReaderStyle(bZ parambZ) {
        this.c = parambZ;
        a();
    }

    public void setTitle(String paramString) {
        this.f.setText(paramString);
    }
}

