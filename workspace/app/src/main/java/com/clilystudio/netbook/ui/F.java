
package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.widget.LinearListView;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

final class F implements IXmPlayerStatusListener {

    F(AudiobookInfoActivity AudiobookInfoActivity1)
    {
        a = AudiobookInfoActivity1;
    }

    private AudiobookInfoActivity a;

    public final void onBufferProgress(int int1)
    {
    }

    public final void onBufferingStart()
    {
    }

    public final void onBufferingStop()
    {
    }

    public final boolean onError(XmPlayerException XmPlayerException1)
    {
        return false;
    }

    public final void onPlayPause()
    {
    }

    public final void onPlayProgress(int int1, int int2)
    {
    }

    public final void onPlayStart()
    {
    }

    public final void onPlayStop()
    {
    }

    public final void onSoundPlayComplete()
    {
    }

    public final void onSoundPrepared()
    {
    }

    public final void onSoundSwitch(int int1, int int2, int int3)
    {
        if( AudiobookInfoActivity.q( a ) )
        {
            AudiobookInfoActivity.h( a ).setPlayButtonDefault( AudiobookInfoActivity.m( a ) );
            AudiobookInfoActivity.c( a, 1 + AudiobookInfoActivity.m( a ) );
            AudiobookInfoActivity.h( a ).a( AudiobookInfoActivity.m( a ), true );
            AudiobookInfoActivity.r( a );
        }
        else
            AudiobookInfoActivity.f( a, true );
    }
}
