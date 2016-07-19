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

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.CommonUtil;

import java.util.Date;

public class SettingWidget extends LinearLayout {
    private ReaderStyle a;
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

    private void b() {
        switch (this.a.c()) {
            case 0:
                this.d.setEnabled(false);
                this.c.setEnabled(true);
                break;
            case 5:
                this.d.setEnabled(true);
                this.c.setEnabled(false);
                break;
            default:
                this.d.setEnabled(true);
                this.c.setEnabled(true);
                break;
        }
    }

    public final void a() {
        if (this.getVisibility() != VISIBLE) {
            this.setVisibility(View.VISIBLE);
            return;
        }
        this.setVisibility(View.GONE);
    }

    public final void a(final db db2) {
        this.findViewById(R.id.reader_set_more).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                db2.a();
            }
        });
    }

    public final void a(final dc dc2) {
        View view = this.findViewById(R.id.reader_auto_start);
        if (view != null) {
            view.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    CommonUtil.putLongPref(SettingWidget.this.getContext(), "start_auto_read_time", new Date().getTime());
                    dc2.a();
                }
            });
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
    public void setReaderStyle(ReaderStyle bZ2) {
        this.a = bZ2;
        bZ2.a(new ReaderStyle.cc() {
            @Override
            public void a() {
                SettingWidget.this.b();
            }
        });
        this.c = this.findViewById(R.id.btn_increase);
        this.d = this.findViewById(R.id.btn_decrease);
        this.c.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                SettingWidget.this.a.d();
                SettingWidget.this.b();
            }
        });
        this.d.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                SettingWidget.this.a.e();
                SettingWidget.this.b();
            }
        });
        this.b();
        this.e = (CheckBox) this.findViewById(R.id.cb_system_brightness);
        SeekBar seekBar = (SeekBar) this.findViewById(R.id.sb_brightness);
        seekBar.setProgress(this.a.f());
        this.e.setChecked(this.a.g());
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (fromUser) {
                    if (progress < 15) {
                        progress = 15;
                    }
                    SettingWidget.this.a.b(progress);
                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
                SettingWidget.this.e.setChecked(false);
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });
        this.e.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                SettingWidget.this.a.b(isChecked);
            }
        });
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
        this.f.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                SettingWidget.this.f.setSelected(true);
                SettingWidget.this.g.setSelected(false);
                SettingWidget.this.h.setSelected(false);
                SettingWidget.this.a.a(1);
                SettingWidget.this.b.a();
            }
        });
        this.g.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                SettingWidget.this.f.setSelected(false);
                SettingWidget.this.g.setSelected(true);
                SettingWidget.this.h.setSelected(false);
                SettingWidget.this.a.a(2);
                SettingWidget.this.b.a();
            }
        });
        this.h.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                SettingWidget.this.f.setSelected(false);
                SettingWidget.this.g.setSelected(false);
                SettingWidget.this.h.setSelected(true);
                SettingWidget.this.a.a(3);
                SettingWidget.this.b.a();
            }
        });
    }

    public void setReaderStyle(ReaderStyle bZ2, ReaderActionBar readerActionBar) {
        this.b = readerActionBar;
        this.setReaderStyle(bZ2);
    }

    public interface db {
        void a();
    }

    public interface dc {
        void a();
    }

}
