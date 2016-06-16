package com.clilystudio.netbook.reader;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
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

    public SettingWidget(Context context) {
        super(context);
    }

    public SettingWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @TargetApi(value = 11)
    public SettingWidget(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    static /* synthetic */ void a(SettingWidget settingWidget) {
        settingWidget.b();
    }

    static /* synthetic */ bZ b(SettingWidget settingWidget) {
        return settingWidget.a;
    }

    static /* synthetic */ CheckBox c(SettingWidget settingWidget) {
        return settingWidget.e;
    }

    static /* synthetic */ ImageView d(SettingWidget settingWidget) {
        return settingWidget.f;
    }

    static /* synthetic */ ImageView e(SettingWidget settingWidget) {
        return settingWidget.g;
    }

    static /* synthetic */ ImageView f(SettingWidget settingWidget) {
        return settingWidget.h;
    }

    static /* synthetic */ ReaderActionBar g(SettingWidget settingWidget) {
        return settingWidget.b;
    }

    private void b() {
        switch (this.a.c()) {
            default: {
                this.d.setEnabled(true);
                this.c.setEnabled(true);
                return;
            }
            case 0: {
                this.d.setEnabled(false);
                this.c.setEnabled(true);
                return;
            }
            case 5:
        }
        this.d.setEnabled(true);
        this.c.setEnabled(false);
    }

    public final void a() {
        if (this.getVisibility() != 0) {
            this.setVisibility(View.VISIBLE);
            return;
        }
        this.setVisibility(View.GONE);
    }

    public final void a(db db2) {
        this.findViewById(R.id.reader_set_more).setOnClickListener(new da(this, db2));
    }

    public final void a(dc dc2) {
        View view = this.findViewById(R.id.reader_auto_start);
        if (view != null) {
            view.setOnClickListener(new cS(this, dc2));
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setReadOptionEnable(boolean bl) {
        View view = this.findViewById(R.id.reader_auto_start);
        this.c.setEnabled(bl);
        this.d.setEnabled(bl);
        view.setEnabled(bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setReaderStyle(bZ bZ2) {
        this.a = bZ2;
        bZ2.a(new cR(this));
        this.c = this.findViewById(R.id.btn_increase);
        this.d = this.findViewById(R.id.btn_decrease);
        this.c.setOnClickListener(new cT(this));
        this.d.setOnClickListener(new cU(this));
        this.b();
        this.e = (CheckBox) this.findViewById(R.id.cb_system_brightness);
        SeekBar seekBar = (SeekBar) this.findViewById(R.id.sb_brightness);
        seekBar.setProgress(this.a.f());
        this.e.setChecked(this.a.g());
        seekBar.setOnSeekBarChangeListener(new cV(this));
        this.e.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener) ((Object) new cW(this)));
        this.f = (ImageView) this.findViewById(R.id.reader_set_bg_1);
        this.g = (ImageView) this.findViewById(R.id.reader_set_bg_2);
        this.h = (ImageView) this.findViewById(R.id.reader_set_bg_3);
        int n = this.a.j();
        if (n == 1) {
            this.f.setSelected(true);
        } else if (n == 2) {
            this.g.setSelected(true);
        } else if (n == 3) {
            this.h.setSelected(true);
        }
        this.f.setOnClickListener(new cX(this));
        this.g.setOnClickListener(new cY(this));
        this.h.setOnClickListener(new cZ(this));
    }

    public void setReaderStyle(bZ bZ2, ReaderActionBar readerActionBar) {
        this.b = readerActionBar;
        this.setReaderStyle(bZ2);
    }
}
