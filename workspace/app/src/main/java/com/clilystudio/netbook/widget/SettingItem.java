package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.RelativeLayout;

public class SettingItem extends RelativeLayout implements View.OnClickListener,
        Checkable {
    private boolean a;
    private SwitchCompat b;
    private CompoundButton.OnCheckedChangeListener c;

    public SettingItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public boolean isChecked() {
        return this.a;
    }

    @Override
    public void setChecked(boolean bl) {
        if (this.a != bl) {
            this.a = bl;
            this.b.setChecked(bl);
            if (this.c != null) {
                this.c.onCheckedChanged(this.b, this.a);
            }
        }
    }

    @Override
    public void onClick(View view) {
        this.toggle();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setOnClickListener(this);
        this.b = (SwitchCompat) this.findViewById(R.id.check);
    }

    public void setCheckListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.c = onCheckedChangeListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void toggle() {
        boolean bl = !this.a;
        this.setChecked(bl);
    }
}
