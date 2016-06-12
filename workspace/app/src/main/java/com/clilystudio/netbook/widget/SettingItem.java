
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.RelativeLayout;

public class SettingItem extends RelativeLayout implements View$OnClickListener, Checkable {

    public SettingItem(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private boolean a;
    private SwitchCompat b;
    private CompoundButton$OnCheckedChangeListener c;

    public boolean isChecked()
    {
        return a;
    }

    public void onClick(View View1)
    {
        toggle();
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setOnClickListener( this );
        b = (SwitchCompat) findViewById( 2131493902 );
    }

    public void setCheckListener(CompoundButton$OnCheckedChangeListener OnCheckedChangeListener1)
    {
        c = OnCheckedChangeListener1;
    }

    public void setChecked(boolean boolean1)
    {
        if( a != boolean1 )
        {
            a = boolean1;
            b.setChecked( boolean1 );
            if( c != null )
                c.onCheckedChanged( (CompoundButton) b, a );
        }
    }

    public void toggle()
    {
        boolean boolean1;

        if( !a )
            boolean1 = true;
        else
            boolean1 = false;
        setChecked( boolean1 );
    }
}
