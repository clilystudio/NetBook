
package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.util.as;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;
import java.util.List;

final class D implements IDataCallBack {

    D(HomeShelfFragment HomeShelfFragment1, int int2)
    {
        b = HomeShelfFragment1;
        a = int2;
    }

    private int a;
    private HomeShelfFragment b;

    public final void onError(int int1, String String2)
    {
    }

    public final void onSuccess(XimalayaResponse XimalayaResponse1)
    {
        TrackList TrackList2 = (TrackList) XimalayaResponse1;
        int int3 = a % 100;
        int int4;

        if( int3 > 0 )
            int4 = int3 - 1;
        else
            int4 = 0;
        HomeShelfFragment.d( b ).a( TrackList2.getTracks(), int4 );
    }
}
