package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.model.AlbumSerialized;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.album.BatchAlbumList;

final class C implements IDataCallBack<BatchAlbumList> {
    private /* synthetic */ AudiobookInfoActivity a;

    C(AudiobookInfoActivity audiobookInfoActivity) {
        this.a = audiobookInfoActivity;
    }

    @Override
    public final void onError(int n, String string) {
        AudiobookInfoActivity.a(this.a, 2);
    }

    @Override
    public final /* synthetic */ void onSuccess(XimalayaResponse ximalayaResponse) {
        BatchAlbumList batchAlbumList = (BatchAlbumList) ximalayaResponse;
        if (batchAlbumList.getAlbums().size() > 0) {
            AudiobookInfoActivity.a(this.a, new AlbumSerialized(batchAlbumList.getAlbums().get(0)));
            AudiobookInfoActivity.b(this.a, (int) AudiobookInfoActivity.c(this.a).getTotalCount());
            this.a.b(AudiobookInfoActivity.c(this.a).getTitle());
            AudiobookInfoActivity.d(this.a);
            return;
        }
        AudiobookInfoActivity.a(this.a, 2);
    }
}
