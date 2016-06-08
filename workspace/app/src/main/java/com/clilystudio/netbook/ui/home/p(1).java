package com.clilystudio.netbook.ui.home;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.ui.feed.FeedIntroActivity;
import com.clilystudio.netbook.ui.feed.FeedListActivity;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.util.m;

import java.io.File;

final class p
        implements AdapterView.OnItemClickListener {
    p(HomeShelfFragment paramHomeShelfFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        BookShelf localBookShelf = HomeShelfFragment.a(this.a, paramInt);
        if (localBookShelf == null) ;
        Advert localAdvert;
        do {
            BookReadRecord localBookReadRecord;
            do {
                return;
                if (HomeShelfFragment.a(this.a).a()) {
                    HomeShelfFragment.a(this.a).a(paramInt - HomeShelfFragment.j(this.a).getHeaderViewsCount());
                    return;
                }
                switch (localBookShelf.getType()) {
                    default:
                        return;
                    case 0:
                        localBookReadRecord = localBookShelf.getBookRecord();
                        new m(this.a.getActivity()).a(localBookReadRecord);
                        if (!localBookReadRecord.isUnread())
                            continue;
                        localBookReadRecord.setUnread(false);
                        localBookReadRecord.save();
                        HomeShelfFragment.a(this.a).notifyDataSetChanged();
                    case 2:
                    case 1:
                    case 3:
                    case 4:
                }
            }
            while (!localBookReadRecord.isRecommended());
            com.umeng.a.b.a(this.a.getActivity(), "book_recommend_read_click", localBookReadRecord.getTitle());
            return;
            BookFile localBookFile = localBookShelf.getTxt();
            if (new File(localBookFile.getFilePath()).exists()) {
                String str = localBookFile.getPathAndName();
                Intent localIntent2 = new Intent("com.clilystudio.netbook.ACTION_READ_TXT");
                localIntent2.putExtra("file_name", str);
                this.a.startActivity(localIntent2);
                return;
            }
            e.a(this.a.getActivity(), "书籍不存在");
            TxtFileObject.delete(localBookFile);
            i.a().c(new A());
            return;
            localAdvert = localBookShelf.getAdvert();
            localAdvert.processClick(paramView);
        }
        while (localAdvert.isRead());
        HomeShelfFragment.a(this.a, localAdvert);
        HomeShelfFragment.a(this.a).notifyDataSetChanged();
        return;
        if (a.l(this.a.getActivity(), "feed_intro")) ;
        for (Intent localIntent1 = new Intent(this.a.getActivity(), FeedIntroActivity.class); ; localIntent1 = new Intent(this.a.getActivity(), FeedListActivity.class)) {
            this.a.startActivity(localIntent1);
            return;
        }
        AudioRecord localAudioRecord = localBookShelf.getAlbum();
        HomeShelfFragment.a(this.a, localAudioRecord);
        if (!localAudioRecord.isUpdateReaded())
            AudioRecord.updateRecordRead(localAudioRecord.getBookId(), true);
        AudioRecord.updateLastRead(localAudioRecord.getBookId());
        HomeShelfFragment.c(this.a);
    }
}
