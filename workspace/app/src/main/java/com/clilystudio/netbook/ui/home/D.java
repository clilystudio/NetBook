package com.clilystudio.netbook.ui.home;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;

final class D implements IDataCallBack<TrackList> {
    private /* synthetic */ int a;
    private /* synthetic */ HomeShelfFragment b;

    D(HomeShelfFragment homeShelfFragment, int n) {
        this.b = homeShelfFragment;
        this.a = n;
    }

    @Override
    public final void onError(int n, String string) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void onSuccess(XimalayaResponse ximalayaResponse) {
        TrackList trackList = (TrackList) ximalayaResponse;
        int n2 = this.a % 100;
        int n3 = n2 > 0 ? n2 - 1 : 0;
        HomeShelfFragment.d(this.b).a(trackList.getTracks(), n3);
    }
}
