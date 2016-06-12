
package com.clilystudio.netbook.reader;

import android.widget.CheckBox;
import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;

final class cV implements SeekBar$OnSeekBarChangeListener {

    cV(SettingWidget SettingWidget1)
    {
        a = SettingWidget1;
    }

    private SettingWidget a;

    public final void onProgressChanged(SeekBar SeekBar1, int int2, boolean boolean3)
    {
        if( boolean3 )
        {
            if( int2 < 15 )
                int2 = 15;
            SettingWidget.b( a ).b( int2 );
        }
    }

    public final void onStartTrackingTouch(SeekBar SeekBar1)
    {
        SettingWidget.c( a ).setChecked( false );
    }

    public final void onStopTrackingTouch(SeekBar SeekBar1)
    {
    }
}
