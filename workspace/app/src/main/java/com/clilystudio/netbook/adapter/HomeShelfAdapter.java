package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.DownloadProgressEvent;
import com.clilystudio.netbook.event.DownloadStatusEvent;
import com.clilystudio.netbook.model.BookFeed;
import com.clilystudio.netbook.model.BookShelf;
import com.clilystudio.netbook.reader.dl.BookDownloadManager;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

import java.util.ArrayList;
import java.util.List;

public class HomeShelfAdapter extends BaseBookAdapter<BookShelf> {

    private Context b;
    private LayoutInflater c;
    private boolean mIsEditing = false;
    private List<BookShelf> mSelectedBooks;
    private boolean[] mIsSelected;
    private boolean g = false;
    private Button h;
    private Button i;

    public HomeShelfAdapter(Activity activity) {
        this.b = activity;
        this.c = LayoutInflater.from(this.b);
        this.mSelectedBooks = new ArrayList<>();
    }

    private void a(final int n, CheckBox checkBox) {
        if (this.mIsEditing) {
            checkBox.setVisibility(View.VISIBLE);
        } else {
            checkBox.setVisibility(View.GONE);
        }
        this.g = true;
        if (this.mIsSelected.length <= n) {
            boolean[] arrbl = new boolean[n + 1];
            System.arraycopy(this.mIsSelected, 0, arrbl, 0, this.mIsSelected.length);
            this.mIsSelected = arrbl;
        }
        checkBox.setChecked(this.mIsSelected[n]);
        this.b(n);
        this.g = false;
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (HomeShelfAdapter.this.g) {
                    return;
                }
                HomeShelfAdapter.this.mIsSelected[n] = isChecked;
                HomeShelfAdapter.this.b(n);
            }
        });
    }

    private void b(int n) {
        if (this.mIsSelected[n]) {
            if (!this.mSelectedBooks.contains(this.getItem(n))) {
                this.mSelectedBooks.add(this.getItem(n));
            }
        } else {
            this.mSelectedBooks.remove(this.getItem(n));
        }
        if (this.mSelectedBooks.size() > 0) {
            String text = "删除(" + this.mSelectedBooks.size() + ")";
            this.h.setText(text);
        } else {
            this.h.setText("删除");
        }
        if (this.mSelectedBooks.size() == this.g()) {
            this.i.setText("取消全选");
            return;
        }
        this.i.setText("全选");
    }

    private int g() {
        int n = 0;
        for (int i = 0; i < this.mIsSelected.length; ++i) {
            int n2 = this.getItemViewType(i);
            if (n2 != 0 && n2 != 2 && n2 != 4) continue;
            ++n;
        }
        return n;
    }

    public final void a(int n) {
        boolean[] arrbl = this.mIsSelected;
        boolean bl = !this.mIsSelected[n];
        arrbl[n] = bl;
        this.notifyDataSetChanged();
    }

    public final void a(Button button, Button button2) {
        this.h = button;
        this.i = button2;
    }

    @Override
    public final void a(List<BookShelf> list) {
        super.a(list);
        this.mIsSelected = new boolean[list.size()];
    }

    public final boolean isEditing() {
        return this.mIsEditing;
    }

    public final void setBatchEdit() {
        this.mIsEditing = true;
        this.notifyDataSetChanged();
    }

    public final void c() {
        this.mIsEditing = false;
        for (int i = 0; i < this.mIsSelected.length; ++i) {
            this.mIsSelected[i] = false;
        }
        this.mSelectedBooks.clear();
        this.notifyDataSetChanged();
    }

    public final void selectAll() {
        for (boolean isSelected : this.mIsSelected) {
            if (!isSelected) {
                for (int n2 = 0; n2 < this.mIsSelected.length; n2++) {
                    this.mIsSelected[n2] = true;
                }
                for (int j = 0; j < this.mIsSelected.length; ++j) {
                    BookShelf bookShelf = getItem(j);
                    if (!this.mSelectedBooks.contains(bookShelf)) {
                        this.mSelectedBooks.add(bookShelf);
                    }
                }
                this.notifyDataSetChanged();
                return;
            }
        }
        for (int j = 0; j < this.mIsSelected.length; ++j) {
            this.mIsSelected[j] = false;
        }
        this.mSelectedBooks.clear();
        this.notifyDataSetChanged();
    }

    public final List<BookShelf> getSelectedBooks() {
        return mSelectedBooks;
    }

    @Override
    public int getItemViewType(int n) {
        return this.getItem(n).getType();
    }

    @Override
    public View getView(int var1_1, View var2_2, ViewGroup var3_3) {
        BookShelf var4_4 = this.getItem(var1_1);
        int var5_5 = var4_4.getType();
        if (var2_2 == null) {
            switch (var5_5) {
                case 0:
                    var2_2 = this.c.inflate(R.layout.list_item_shelf_book, var3_3, false);
                    break;
                case 3:
                    var2_2 = this.c.inflate(R.layout.list_item_shelf_feed, var3_3, false);
                    break;
                default:
                    break;
            }
        } else {
            if (this.mIsEditing) {
                if (var5_5 == 1 || var5_5 == 3) {
                    var2_2 = this.c.inflate(R.layout.list_item_shelf_empty, var3_3, false);
                }
            } else {
                switch (var5_5) {
                    case 0:
                        var2_2 = this.c.inflate(R.layout.list_item_shelf_book, var3_3, false);
                        break;
                    case 3:
                        var2_2 = this.c.inflate(R.layout.list_item_shelf_feed, var3_3, false);
                        break;
                    default:
                        break;
                }
            }
        }
        switch (var5_5) {
            case 0: {
                BookHolder var19_6 = new BookHolder(var2_2);
                BookReadRecord var20_7 = var4_4.getBookRecord();
                var19_6.cover.setImageUrl(var20_7.getFullCover(), R.drawable.cover_default);
                var19_6.title.setText(var20_7.getTitle());
                var19_6.desc.setText(var20_7.buildDesc());
                if (var20_7.isUnread() && !this.mIsEditing) {
                    var19_6.flag.setType(3);
                } else {
                    var19_6.flag.setType(0);
                }
                this.a(var1_1, var19_6.check);
                var19_6.top.setVisibility(var20_7.isTop() ? View.VISIBLE : View.GONE);
                int var22_9 = var20_7.getReadMode();
                boolean var23_10 = false;
                if (var22_9 != -1) {
                    String var29_11 = var20_7.getDownloadedSource();
                    String var30_12 = CommonUtil.getSourceName(var22_9);
                    var23_10 = false;
                    if (var29_11 != null) {
                        var23_10 = var29_11.contains(var30_12);
                    }
                }
                final String var24_14 = var20_7.getBookId();
                if (!CommonUtil.isDownloading(var24_14)) {
                    if (var23_10) {
                        var19_6.coverLoadingLayer.f();
                        return var2_2;
                    }
                    var19_6.coverLoadingLayer.c();
                    return var2_2;
                }
                BookDlRecord var25_15 = BookDlRecord.get(var24_14);
                if (var25_15 == null) {
                    var19_6.coverLoadingLayer.c();
                    return var2_2;
                }
                int var26_16 = var25_15.getProgress();
                int var27_17 = var25_15.getTotal();
                if (var27_17 > 0) {
                    var26_16 = 5 + (int) (95.0f * (float) ((int) (100.0f * ((float) var26_16 / (float) var27_17))) / 100.0f);
                }
                int var28_18 = var25_15.getStatus();
                if (var28_18 == 2) {
                    var19_6.coverLoadingLayer.setProgress(var26_16);
                } else if (var28_18 == 3) {
                    var19_6.coverLoadingLayer.b();
                } else if (var28_18 == 1) {
                    var19_6.coverLoadingLayer.d();
                } else if (var28_18 == 5) {
                    var19_6.coverLoadingLayer.e();
                } else if (!var19_6.coverLoadingLayer.g()) {
                    var19_6.coverLoadingLayer.c();
                }
                var19_6.coverLoadingLayer.setCoverListener(new CoverLoadingLayer.y() {
                    @Override
                    public void a() {
                        BusProvider.getInstance().post(new DownloadStatusEvent(var24_14, 3));
                    }

                    @Override
                    public void b() {
                        new BookDownloadManager((Activity) HomeShelfAdapter.this.b).startDownload(var24_14, 0, 0);
                    }

                    @Override
                    public void c() {
                        BookDlRecord bookDlRecord = BookDlRecord.get(var24_14);
                        if (bookDlRecord != null) {
                            bookDlRecord.setStatus(3);
                            bookDlRecord.save();
                            BusProvider.getInstance().post(new DownloadProgressEvent());
                        }
                    }
                });
                return var2_2;
            }
            case 3: {
                if (this.mIsEditing) return var2_2;
                FeedHolder var11_25 = new FeedHolder(var2_2);
                BookFeed var12_26 = var4_4.getBookFeed();
                var11_25.title.setText(var12_26.getTitle());
                if (var12_26.isFat()) {
                    var11_25.flag.setType(4);
                    return var2_2;
                }
                var11_25.flag.setType(0);
                return var2_2;
            }
        }
        return var2_2;
    }

    @Override
    public int getViewTypeCount() {
        return 2;
    }

    class FeedHolder {
        BookShelfFlagView flag;
        TextView title;

        FeedHolder(View view) {
            this.title = (TextView) view.findViewById(R.id.desc);
            this.flag = (BookShelfFlagView) view.findViewById(R.id.flag);
        }
    }

    class BookHolder {
        CheckBox check;
        CoverView cover;
        CoverLoadingLayer coverLoadingLayer;
        TextView desc;
        BookShelfFlagView flag;
        TextView title;
        View top;

        BookHolder(View view) {
            this.title = (TextView) view.findViewById(R.id.title);
            this.desc = (TextView) view.findViewById(R.id.desc);
            this.flag = (BookShelfFlagView) view.findViewById(R.id.flag);
            this.top = view.findViewById(R.id.top);
            this.cover = (CoverView) view.findViewById(R.id.cover);
            this.coverLoadingLayer = (CoverLoadingLayer) view.findViewById(R.id.cover_loading);
            this.check = (CheckBox) view.findViewById(R.id.checked);
        }
    }
}
