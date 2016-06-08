package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;

import com.clilystudio.netbook.db.AudioRecord;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.util.adutil.n;
import com.clilystudio.netbook.util.t;

import java.util.ArrayList;
import java.util.List;

public class HomeShelfAdapter extends u<BookShelf> {
    public static boolean a;

    static {
        HomeShelfAdapter.class.getSimpleName();
    }

    private Context b;
    private LayoutInflater c;
    private boolean d = false;
    private List<BookShelf> e;
    private boolean[] f;
    private boolean g = false;
    private Button h;
    private Button i;

    public HomeShelfAdapter(Activity paramActivity) {
        this.b = paramActivity;
        this.c = LayoutInflater.from(this.b);
        this.e = new ArrayList();
    }

    private void a(int paramInt, CheckBox paramCheckBox) {
        if (this.d)
            paramCheckBox.setVisibility(0);
        while (true) {
            this.g = true;
            if (this.f.length > paramInt)
                break;
            boolean[] arrayOfBoolean = new boolean[paramInt + 1];
            int j = 0;
            while (true)
                if (j < this.f.length) {
                    arrayOfBoolean[j] = this.f[j];
                    j++;
                    continue;
                    paramCheckBox.setVisibility(8);
                    break;
                }
            this.f = arrayOfBoolean;
        }
        paramCheckBox.setChecked(this.f[paramInt]);
        b(paramInt);
        this.g = false;
        paramCheckBox.setOnCheckedChangeListener(new q(this, paramInt));
    }

    private void b(int paramInt) {
        if (this.f[paramInt] != 0) {
            if (!this.e.contains(getItem(paramInt)))
                this.e.add(getItem(paramInt));
            if (this.e.size() <= 0)
                break label133;
            this.h.setText("删除(" + this.e.size() + ")");
        }
        while (true) {
            if (this.e.size() != g())
                break label145;
            this.i.setText("取消全选");
            return;
            this.e.remove(getItem(paramInt));
            break;
            label133:
            this.h.setText("删除");
        }
        label145:
        this.i.setText("全选");
    }

    private int g() {
        int j = 0;
        int k = 0;
        while (j < this.f.length) {
            int m = getItemViewType(j);
            if ((m == 0) || (m == 2) || (m == 4))
                k++;
            j++;
        }
        return k;
    }

    public final void a(int paramInt) {
        boolean[] arrayOfBoolean = this.f;
        if (this.f[paramInt] == 0) ;
        for (int j = 1; ; j = 0) {
            arrayOfBoolean[paramInt] = j;
            notifyDataSetChanged();
            return;
        }
    }

    public final void a(Button paramButton1, Button paramButton2) {
        this.h = paramButton1;
        this.i = paramButton2;
    }

    public final void a(List<BookShelf> paramList) {
        super.a(paramList);
        this.f = new boolean[paramList.size()];
    }

    public final boolean a() {
        return this.d;
    }

    public final void b() {
        this.d = true;
        notifyDataSetChanged();
    }

    public final void c() {
        this.d = false;
        for (int j = 0; j < this.f.length; j++)
            this.f[j] = false;
        this.e.clear();
        notifyDataSetChanged();
    }

    public final void d() {
        boolean[] arrayOfBoolean = this.f;
        int j = arrayOfBoolean.length;
        for (int k = 0; k < j; k++) {
            if (arrayOfBoolean[k] != 0)
                continue;
            int i2;
            for (int n = 0; ; n++) {
                int i1 = this.f.length;
                i2 = 0;
                if (n >= i1)
                    break;
                this.f[n] = true;
            }
            while (i2 < this.f.length) {
                BookShelf localBookShelf = (BookShelf) getItem(i2);
                int i3 = localBookShelf.getType();
                if (((i3 == 0) || (i3 == 2) || (i3 == 4)) && (!this.e.contains(localBookShelf)))
                    this.e.add(localBookShelf);
                i2++;
            }
            notifyDataSetChanged();
            return;
        }
        for (int m = 0; m < this.f.length; m++)
            this.f[m] = false;
        this.e.clear();
        notifyDataSetChanged();
    }

    public final List<BookShelf> e() {
        return this.e;
    }

    public int getItemViewType(int paramInt) {
        return ((BookShelf) getItem(paramInt)).getType();
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
        BookShelf localBookShelf = (BookShelf) getItem(paramInt);
        int j = localBookShelf.getType();
        if (paramView == null)
            switch (j) {
                default:
                    switch (j) {
                        default:
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                    }
                case 1:
                case 0:
                case 2:
                case 3:
                case 4:
            }
        label478:
        label485:
        label495:
        do {
            do {
                return paramView;
                paramView = this.c.inflate(2130903305, paramViewGroup, false);
                break;
                paramView = this.c.inflate(2130903307, paramViewGroup, false);
                break;
                paramView = this.c.inflate(2130903310, paramViewGroup, false);
                break;
                paramView = this.c.inflate(2130903309, paramViewGroup, false);
                break;
                paramView = this.c.inflate(2130903306, paramViewGroup, false);
                break;
                if (this.d) {
                    if ((j != 1) && (j != 3))
                        break;
                    paramView = this.c.inflate(2130903308, paramViewGroup, false);
                    break;
                }
                switch (j) {
                    case 2:
                    default:
                        break;
                    case 1:
                        paramView = this.c.inflate(2130903305, paramViewGroup, false);
                        break;
                    case 3:
                        paramView = this.c.inflate(2130903309, paramViewGroup, false);
                        break;
                    HomeShelfAdapter.BookHolder localBookHolder = new HomeShelfAdapter.BookHolder(paramView);
                    BookReadRecord localBookReadRecord = localBookShelf.getBookRecord();
                    localBookHolder.cover.setImageUrl(localBookReadRecord.getFullCover(), 2130837766);
                    localBookHolder.title.setText(localBookReadRecord.getTitle());
                    localBookHolder.desc.setText(localBookReadRecord.buildDesc());
                    if ((localBookReadRecord.isUnread()) && (!this.d)) {
                        localBookHolder.flag.setType(3);
                        a(paramInt, localBookHolder.check);
                        if (!localBookReadRecord.isTop())
                            break label478;
                    }
                    String str1;
                    for (int n = 0; ; n = 8) {
                        localBookHolder.top.setVisibility(n);
                        int i1 = localBookReadRecord.getReadMode();
                        int i2 = 0;
                        if (i1 != -1) {
                            String str2 = localBookReadRecord.getDownloadedSource();
                            String str3 = a.g(i1);
                            i2 = 0;
                            if (str2 != null) {
                                boolean bool3 = str2.contains(str3);
                                i2 = 0;
                                if (bool3)
                                    i2 = 1;
                            }
                        }
                        str1 = localBookReadRecord.getBookId();
                        if (am.h(str1))
                            break label495;
                        if (i2 == 0)
                            break label485;
                        localBookHolder.coverLoadingLayer.f();
                        return paramView;
                        localBookHolder.flag.setType(0);
                        break;
                    }
                    localBookHolder.coverLoadingLayer.c();
                    return paramView;
                    BookDlRecord localBookDlRecord = BookDlRecord.get(str1);
                    if (localBookDlRecord == null) {
                        localBookHolder.coverLoadingLayer.c();
                        return paramView;
                    }
                    int i3 = localBookDlRecord.getProgress();
                    int i4 = localBookDlRecord.getTotal();
                    if (i4 > 0)
                        i3 = 5 + (int) (95.0F * (int) (100.0F * (i3 / i4)) / 100.0F);
                    int i5 = localBookDlRecord.getStatus();
                    if (i5 == 2)
                        localBookHolder.coverLoadingLayer.setProgress(i3);
                    while (true) {
                        localBookHolder.coverLoadingLayer.setCoverListener(new r(this, str1));
                        return paramView;
                        if (i5 == 3) {
                            localBookHolder.coverLoadingLayer.b();
                            continue;
                        }
                        if (i5 == 1) {
                            localBookHolder.coverLoadingLayer.d();
                            continue;
                        }
                        if (i5 == 5) {
                            localBookHolder.coverLoadingLayer.e();
                            continue;
                        }
                        if (localBookHolder.coverLoadingLayer.g())
                            continue;
                        localBookHolder.coverLoadingLayer.c();
                    }
                }
            }
            while (this.d);
            HomeShelfAdapter.AdHolder localAdHolder = new HomeShelfAdapter.AdHolder(paramView);
            Advert localAdvert = localBookShelf.getAdvert();
            localAdHolder.title.setText(localAdvert.getTitle());
            localAdHolder.desc.setText(localAdvert.getDesc());
            localAdHolder.flag.setType(localAdvert.getFlagType());
            localAdHolder.cover.setImageUrl(localAdvert.getFullImg());
            localAdHolder.cover.setDrawingCacheEnabled(true);
            n.a(localAdvert, paramView);
            return paramView;
            HomeShelfAdapter.TxtHolder localTxtHolder = new HomeShelfAdapter.TxtHolder(paramView);
            BookFile localBookFile = localBookShelf.getTxt();
            localTxtHolder.title.setText(localBookFile.getName());
            localTxtHolder.desc.setText("阅读进度 : " + localBookFile.getReadableProgress());
            boolean bool2 = localBookFile.isTop();
            int m = 0;
            if (bool2) ;
            while (true) {
                localTxtHolder.top.setVisibility(m);
                a(paramInt, localTxtHolder.check);
                return paramView;
                m = 8;
            }
        }
        while (this.d);
        HomeShelfAdapter.FeedHolder localFeedHolder = new HomeShelfAdapter.FeedHolder(paramView);
        BookFeed localBookFeed = localBookShelf.getBookFeed();
        localFeedHolder.title.setText(localBookFeed.getTitle());
        if (localBookFeed.isFat()) {
            localFeedHolder.flag.setType(4);
            return paramView;
        }
        localFeedHolder.flag.setType(0);
        return paramView;
        HomeShelfAdapter.AlbumHolder localAlbumHolder = new HomeShelfAdapter.AlbumHolder(paramView);
        AudioRecord localAudioRecord = localBookShelf.getAlbum();
        localAlbumHolder.cover.setImageUrl(localAudioRecord.getImgUrl(), 2130837766);
        localAlbumHolder.title.setText(localAudioRecord.getName());
        localAlbumHolder.desc.setText(t.a(localAudioRecord.getLastUpdate()) + "\t\t" + localAudioRecord.getDesc());
        View localView;
        int k;
        if ((localAudioRecord.isUpdateReaded()) || (this.d)) {
            localAlbumHolder.flag.setType(0);
            a(paramInt, localAlbumHolder.check);
            localView = localAlbumHolder.top;
            boolean bool1 = localAudioRecord.isTop();
            k = 0;
            if (!bool1)
                break label1106;
        }
        while (true) {
            localView.setVisibility(k);
            return paramView;
            localAlbumHolder.flag.setType(3);
            break;
            label1106:
            k = 8;
        }
    }

    public int getViewTypeCount() {
        return 5;
    }
}

