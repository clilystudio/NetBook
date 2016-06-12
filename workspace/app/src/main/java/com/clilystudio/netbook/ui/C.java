package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.model.AlbumSerialized;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.BatchAlbumList;

final class C implements IDataCallBack {

    private AudiobookInfoActivity a;

    C(AudiobookInfoActivity AudiobookInfoActivity1) {
        a = AudiobookInfoActivity1;
    }

    public final void onError(int int1, String String2) {
        AudiobookInfoActivity.a(a, 2);
    }

    public final void onSuccess(XimalayaResponse XimalayaResponse1) {
        BatchAlbumList BatchAlbumList2 = (BatchAlbumList) XimalayaResponse1;

        if (BatchAlbumList2.getAlbums().size() > 0) {
            AudiobookInfoActivity.a(a, new AlbumSerialized((Album) BatchAlbumList2.getAlbums().get(0)));
            AudiobookInfoActivity.b(a, (int) AudiobookInfoActivity.c(a).getTotalCount());
            a.b(AudiobookInfoActivity.c(a).getTitle());
            AudiobookInfoActivity.d(a);
        } else
            AudiobookInfoActivity.a(a, 2);
    }
}
