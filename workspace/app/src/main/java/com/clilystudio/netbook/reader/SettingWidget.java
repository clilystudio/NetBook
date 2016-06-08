package com.clilystudio.netbook.reader;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;

public class SettingWidget extends LinearLayout {
    private bZ a;
    private ReaderActionBar b;
    private View c;
    private View d;
    private CheckBox e;
    private ImageView f;
    private ImageView g;
    private ImageView h;

    public SettingWidget(Context paramContext) {
        super(paramContext);
    }

    public SettingWidget(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    @TargetApi(11)
    public SettingWidget(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
        super(paramContext, paramAttributeSet, paramInt);
    }

    private void b() {
        switch (this.a.c()) {
            default:
                this.d.setEnabled(true);
                this.c.setEnabled(true);
                return;
            case 0:
                this.d.setEnabled(false);
                this.c.setEnabled(true);
                return;
            case 5:
        }
        this.d.setEnabled(true);
        this.c.setEnabled(false);
    }

    public final void a() {
        if (getVisibility() != 0) {
            setVisibility(0);
            return;
        }
        setVisibility(8);
    }

    public final void a(db paramdb) {
        findViewById(2131493957).setOnClickListener(new da(this, paramdb));
    }

    public final void a(dc paramdc) {
        View localView = findViewById(2131493952);
        if (localView != null)
            localView.setOnClickListener(new cS(this, paramdc));
    }

    public boolean onTouchEvent(MotionEvent paramMotionEvent) {
        return true;
    }

    public void setReadOptionEnable(boolean paramBoolean) {
        View localView = findViewById(2131493952);
        this.c.setEnabled(paramBoolean);
        this.d.setEnabled(paramBoolean);
        localView.setEnabled(paramBoolean);
    }

    public void setReaderStyle(bZ parambZ) {
        this.a = parambZ;
        parambZ.a(new cR(this));
        this.c = findViewById(2131493951);
        this.d = findViewById(2131493950);
        this.c.setOnClickListener(new cT(this));
        this.d.setOnClickListener(new cU(this));
        b();
        this.e = ((CheckBox) findViewById(2131493949));
        SeekBar localSeekBar = (SeekBar) findViewById(2131493948);
        localSeekBar.setProgress(this.a.f());
        this.e.setChecked(this.a.g());
        localSeekBar.setOnSeekBarChangeListener(new cV(this));
        this.e.setOnCheckedChangeListener(new cW(this));
        this.f = ((ImageView) findViewById(2131493954));
        this.g = ((ImageView) findViewById(2131493955));
        this.h = ((ImageView) findViewById(2131493956));
        int i = this.a.j();
        if (i == 1)
            this.f.setSelected(true);
        while (true) {
            this.f.setOnClickListener(new cX(this));
            this.g.setOnClickListener(new cY(this));
            this.h.setOnClickListener(new cZ(this));
            return;
            if (i == 2) {
                this.g.setSelected(true);
                continue;
            }
            if (i != 3)
                continue;
            this.h.setSelected(true);
        }
    }

    public void setReaderStyle(bZ parambZ, ReaderActionBar paramReaderActionBar) {
        this.b = paramReaderActionBar;
        setReaderStyle(parambZ);
    }
}

