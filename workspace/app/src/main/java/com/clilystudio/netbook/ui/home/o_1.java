package com.clilystudio.netbook.ui.home;

import android.util.Log;

import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.model.BookShelf;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import com.ximalaya.ting.android.opensdk.model.album.BatchAlbumList;

import java.util.Iterator;
import java.util.List;

final class o
        implements IDataCallBack<BatchAlbumList> {
    private /* synthetic */ HomeShelfFragment a;

    o(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    @Override
    public final void onError(int n2, String string) {
        Log.e(HomeShelfFragment.f(), string);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void onSuccess(XimalayaResponse ximalayaResponse) {
        BatchAlbumList batchAlbumList = (BatchAlbumList) ximalayaResponse;
        HomeShelfFragment.g(this.a);
        if (HomeShelfFragment.a(this.a) == null) {
            return;
        }
        List list = HomeShelfFragment.a(this.a).f();
        List<Album> list2 = batchAlbumList.getAlbums();
        Iterator iterator = list.iterator();
        boolean bl = false;
        while (iterator.hasNext()) {
            boolean bl2;
            BookShelf bookShelf = (BookShelf) iterator.next();
            if (bookShelf.getType() != 4) {
                bl2 = bl;
            } else {
                Iterator<Album> iterator2 = list2.iterator();
                boolean bl3 = bl;
                while (iterator2.hasNext()) {
                    boolean bl4;
                    Album album = iterator2.next();
                    if (album.getId() == Long.parseLong(bookShelf.getAlbum().getBookId()) && album.getUpdatedAt() > bookShelf.getAlbum().getLastUpdate()) {
                        bookShelf.getAlbum().setUpdateReaded(false);
                        bookShelf.getAlbum().setLastUpdate(album.getLastUptrack().getUpdatedAt());
                        AudioRecord.updateLastTime(bookShelf.getAlbum().getBookId(), bookShelf.getAlbum().getLastUpdate());
                        AudioRecord.updateRecordRead(bookShelf.getAlbum().getBookId(), false);
                        bl4 = true;
                    } else {
                        bl4 = bl3;
                    }
                    bl3 = bl4;
                }
                bl2 = bl3;
            }
            bl = bl2;
        }
    }
}
