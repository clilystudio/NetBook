
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import android.widget.CompoundButton$OnCheckedChangeListener;
import com.clilystudio.netbook.R$styleable;

public class SettingCheckBox extends SwitchCompat {

    public SettingCheckBox(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.SettingCheckBox );
        a = TypedArray3.getString( 0 );
        b = TypedArray3.getBoolean( 1, false );
        TypedArray3.recycle();
    }

    private String a;     // final access specifier removed
    private boolean b;     // final access specifier removed

    static String a(SettingCheckBox SettingCheckBox1)
    {
        return SettingCheckBox1.a;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setChecked( com.clilystudio.netbook.hpay100.a.a.a( getContext(), a, b ) );
        setOnCheckedChangeListener( (CompoundButton$OnCheckedChangeListener) new az( this ) );
    }
}
