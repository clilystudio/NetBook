
package com.clilystudio.netbook.ui;

import android.widget.SeekBar;
import android.widget.SeekBar$OnSeekBarChangeListener;
import android.widget.TextView;
import com.clilystudio.netbook.util.as;

final class i implements SeekBar$OnSeekBarChangeListener {

    i(AudioBookPlayActivity AudioBookPlayActivity1)
    {
        a = AudioBookPlayActivity1;
    }

    private AudioBookPlayActivity a;

    public final void onProgressChanged(SeekBar SeekBar1, int int2, boolean boolean3)
    {
        if( !com.clilystudio.netbook.ui.AudioBookPlayActivity.e( a ) )
        {
            as.a( 10 * (int2 * AudioBookPlayActivity.f( a )) );
            AudioBookPlayActivity.b( a ).d();
            AudioBookPlayActivity.a( a, AudioBookPlayActivity.g( a ), int2 * AudioBookPlayActivity.f( a ) / 100 );
        }
    }

    public final void onStartTrackingTouch(SeekBar SeekBar1)
    {
    }

    public final void onStopTrackingTouch(SeekBar SeekBar1)
    {
    }
}
