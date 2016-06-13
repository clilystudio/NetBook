package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

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
    private /* synthetic */ HomeShelfFragment a;

    p(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n2, long l2) {
        BookShelf bookShelf = HomeShelfFragment.a(this.a, n2);
        if (bookShelf == null) return;
        if (HomeShelfFragment.a(this.a).a()) {
            HomeShelfFragment.a(this.a).a(n2 - HomeShelfFragment.j(this.a).getHeaderViewsCount());
            return;
        }
        switch (bookShelf.getType()) {
            default: {
                return;
            }
            case 0: {
                BookReadRecord bookReadRecord = bookShelf.getBookRecord();
                new m(this.a.getActivity()).a(bookReadRecord);
                if (bookReadRecord.isUnread()) {
                    bookReadRecord.setUnread(false);
                    bookReadRecord.save();
                    HomeShelfFragment.a(this.a).notifyDataSetChanged();
                }
                if (!bookReadRecord.isRecommended()) return;
                {
                    b.a(this.a.getActivity(), "book_recommend_read_click", bookReadRecord.getTitle());
                    return;
                }
            }
            case 2: {
                BookFile bookFile = bookShelf.getTxt();
                if (new File(bookFile.getFilePath()).exists()) {
                    String string = bookFile.getPathAndName();
                    Intent intent = new Intent("com.clilystudio.netbook.ACTION_READ_TXT");
                    intent.putExtra("file_name", string);
                    this.a.startActivity(intent);
                    return;
                }
                e.a((Activity) this.a.getActivity(), "\u4e66\u7c4d\u4e0d\u5b58\u5728");
                TxtFileObject.delete(bookFile);
                i.a().c(new A());
                return;
            }
            case 1: {
                Advert advert = bookShelf.getAdvert();
                advert.processClick(view);
                if (advert.isRead()) {
                    return;
                }
                HomeShelfFragment.a(this.a, advert);
                HomeShelfFragment.a(this.a).notifyDataSetChanged();
                return;
            }
            case 3: {
                Intent intent = a.l(this.a.getActivity(), "feed_intro") ? new Intent(this.a.getActivity(), FeedIntroActivity.class) : new Intent(this.a.getActivity(), FeedListActivity.class);
                this.a.startActivity(intent);
                return;
            }
            case 4:
        }
        AudioRecord audioRecord = bookShelf.getAlbum();
        HomeShelfFragment.a(this.a, audioRecord);
        if (!audioRecord.isUpdateReaded()) {
            AudioRecord.updateRecordRead(audioRecord.getBookId(), true);
        }
        AudioRecord.updateLastRead(audioRecord.getBookId());
        HomeShelfFragment.c(this.a);
    }
}
