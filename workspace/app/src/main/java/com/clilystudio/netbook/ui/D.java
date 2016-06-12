
package com.clilystudio.netbook.ui;

import android.util.Log;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.LinearListView;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;
import java.util.List;

final class D implements IDataCallBack {

    D(AudiobookInfoActivity AudiobookInfoActivity1)
    {
        a = AudiobookInfoActivity1;
    }

    private AudiobookInfoActivity a;

    public final void onError(int int1, String String2)
    {
        AudiobookInfoActivity.a( a, 2 );
    }

    public final void onSuccess(XimalayaResponse XimalayaResponse1)
    {
        TrackList TrackList2 = (TrackList) XimalayaResponse1;
        List List4;

        Log.d( "AudiobookInfoActivity", new StringBuilder( "success total count:" ).append( TrackList2.getTotalCount() ).append( " title:" ).append( TrackList2.getAlbumTitle() ).append( " smallUrl:" ).append( TrackList2.getCoverUrlSmall() ).toString() );
        AudiobookInfoActivity.a( a, 1 );
        AudiobookInfoActivity.e( a );
        List4 = TrackList2.getTracks();
        AudiobookInfoActivity.h( a ).setShowData( List4, AudiobookInfoActivity.f( a ), AudiobookInfoActivity.g( a ) );
        if( AudiobookInfoActivity.g( a ) * AudiobookInfoActivity.i( a ) >= AudiobookInfoActivity.j( a ) && AudiobookInfoActivity.k( a ) )
        {
            AudiobookInfoActivity.b( a, as.c() );
            if( AudiobookInfoActivity.l( a ) )
            {
                AudiobookInfoActivity.c( a, AudiobookInfoActivity.l( a ) );
                AudiobookInfoActivity.h( a ).a( AudiobookInfoActivity.m( a ), true );
            }
            else
                AudiobookInfoActivity.h( a ).a( AudiobookInfoActivity.m( a ), false );
            AudiobookInfoActivity.d( a, true );
        }
        if( AudiobookInfoActivity.g( a ) * AudiobookInfoActivity.i( a ) < AudiobookInfoActivity.j( a ) )
        {
            AudiobookInfoActivity.n( a );
            AudiobookInfoActivity.d( a );
        }
    }
}
