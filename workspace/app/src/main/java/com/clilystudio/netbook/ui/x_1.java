package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.util.e;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.AlbumList;

import java.util.List;

final class x
        implements IDataCallBack<AlbumList> {
    private /* synthetic */ boolean a;
    private /* synthetic */ AudiobookCategoryListActivity b;

    x(AudiobookCategoryListActivity audiobookCategoryListActivity, boolean bl) {
        this.b = audiobookCategoryListActivity;
        this.a = bl;
    }

    @Override
    public final void onError(int n, String string) {
        AudiobookCategoryListActivity.b(this.b).setVisibility(8);
        if (this.a) {
            this.b.h();
            return;
        }
        e.a((Activity) this.b, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }

    @Override
    public final /* synthetic */ void onSuccess(XimalayaResponse ximalayaResponse) {
        AlbumList albumList = (AlbumList) ximalayaResponse;
        AudiobookCategoryListActivity.b(this.b).setVisibility(8);
        int n = albumList.getTotalPage();
        List<Album> list = albumList.getAlbums();
        if (list.size() > 0) {
            this.b.f();
            AudiobookCategoryListActivity.a(this.b).addAll(list);
            AudiobookCategoryListActivity.c(this.b).a(AudiobookCategoryListActivity.a(this.b));
            if (AudiobookCategoryListActivity.d(this.b) < n) {
                AudiobookCategoryListActivity.e(this.b).setOnLastItemListener(AudiobookCategoryListActivity.f(this.b));
                AudiobookCategoryListActivity.g(this.b);
                return;
            }
        } else if (this.a) {
            this.b.g();
            return;
        }
        AudiobookCategoryListActivity.e(this.b).setOnLastItemListener(null);
    }
}
