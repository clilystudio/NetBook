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

final class o implements IDataCallBack {

    private HomeShelfFragment a;

    o(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    public final void onError(int int1, String String2) {
        Log.e(HomeShelfFragment.f(), String2);
    }

    public final void onSuccess(XimalayaResponse XimalayaResponse1) {
        BatchAlbumList BatchAlbumList2 = (BatchAlbumList) XimalayaResponse1;

        HomeShelfFragment.g(a);
        if (HomeShelfFragment.a(a) != null) {
            List List3 = HomeShelfFragment.a(a).f();
            List List4 = BatchAlbumList2.getAlbums();
            Iterator Iterator5 = List3.iterator();
            int int6;
            int int8;

            for (int6 = 0; Iterator5.hasNext(); int6 = int8) {
                BookShelf BookShelf7 = (BookShelf) Iterator5.next();

                if (BookShelf7.getType() == 4) {
                    Iterator Iterator9 = List4.iterator();
                    int int10;
                    int int12;

                    for (int10 = int6; Iterator9.hasNext(); int10 = int12) {
                        Album Album11 = (Album) Iterator9.next();

                        if (Album11.getId() == Long.parseLong(BookShelf7.getAlbum().getBookId()) && Album11.getUpdatedAt() > BookShelf7.getAlbum().getLastUpdate()) {
                            BookShelf7.getAlbum().setUpdateReaded(false);
                            BookShelf7.getAlbum().setLastUpdate(Album11.getLastUptrack().getUpdatedAt());
                            AudioRecord.updateLastTime(BookShelf7.getAlbum().getBookId(), BookShelf7.getAlbum().getLastUpdate());
                            AudioRecord.updateRecordRead(BookShelf7.getAlbum().getBookId(), false);
                            int12 = 1;
                        } else
                            int12 = int10;
                    }
                    int8 = int10;
                } else
                    int8 = int6;
            }
            if (int6 != 0)
                HomeShelfFragment.h(a);
        }
    }
}
