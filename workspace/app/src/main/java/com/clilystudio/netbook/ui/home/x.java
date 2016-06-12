
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.widget.TextView;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.util.t;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;
import java.util.List;

final class x implements IXmPlayerStatusListener {

    x(HomeShelfFragment HomeShelfFragment1)
    {
        a = HomeShelfFragment1;
    }

    private HomeShelfFragment a;

    public final void onBufferProgress(int int1)
    {
    }

    public final void onBufferingStart()
    {
        HomeShelfFragment.a( a, false );
        e.a( (Activity) a.getActivity(), "\u7F13\u51B2\u4E2D!" );
    }

    public final void onBufferingStop()
    {
        HomeShelfFragment.a( a, true );
    }

    public final boolean onError(XmPlayerException XmPlayerException1)
    {
        return false;
    }

    public final void onPlayPause()
    {
        e.a( false );
        HomeShelfFragment.o( a );
        HomeShelfFragment.a( a, false );
    }

    public final void onPlayProgress(int int1, int int2)
    {
        HomeShelfFragment.p( a ).setText( (CharSequence) new StringBuilder().append( t.b( (long) int1 ) ).append( "/" ).append( t.b( (long) int2 ) ).toString() );
        e.b( new StringBuilder().append( t.b( (long) int1 ) ).append( "/" ).append( t.b( (long) int2 ) ).toString() );
    }

    public final void onPlayStart()
    {
        e.a( true );
        HomeShelfFragment.o( a );
        com.clilystudio.netbook.hpay100.a.a.v( (Context) a.getActivity() );
    }

    public final void onPlayStop()
    {
        HomeShelfFragment.a( a, false );
    }

    public final void onSoundPlayComplete()
    {
    }

    public final void onSoundPrepared()
    {
    }

    public final void onSoundSwitch(int int1, int int2, int int3)
    {
        Track Track5;

        HomeShelfFragment.d( a );
        Track5 = (Track) as.j().get( int1 );
        HomeShelfFragment.a( a, Track5 );
    }
}
