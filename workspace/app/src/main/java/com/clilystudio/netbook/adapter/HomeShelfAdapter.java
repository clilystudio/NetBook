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
    private Context mContext;
    private LayoutInflater mLayoutInflater;
    private boolean mIsEditing = false;
    private List<BookShelf> mSelectedBooks;
    private boolean[] mIsSelected;
    private boolean isAdding = false;
    private Button mDeleteButton;
    private Button mSelectAllButton;

    public HomeShelfAdapter(Activity activity) {
        mContext = activity;
        mLayoutInflater = LayoutInflater.from(mContext);
        mSelectedBooks = new ArrayList<>();
    }

    private void changeSelected(int position) {
        if (mIsSelected[position]) {
            if (!mSelectedBooks.contains(getItem(position))) {
                mSelectedBooks.add(getItem(position));
            }
        } else {
            mSelectedBooks.remove(getItem(position));
        }
        if (mSelectedBooks.size() > 0) {
            String text = "删除(" + mSelectedBooks.size() + ")";
            mDeleteButton.setText(text);
        } else {
            mDeleteButton.setText("删除");
        }
        if (mSelectedBooks.size() == getSelectedBookCount()) {
            mSelectAllButton.setText("取消全选");
        } else {
            mSelectAllButton.setText("全选");
        }
    }

    private int getSelectedBookCount() {
        int count = 0;
        for (int i = 0; i < mIsSelected.length; ++i) {
            if (getItemViewType(i) == 0) {
                ++count;
            }
        }
        return count;
    }

    public final void toggleSelected(int position) {
        mIsSelected[position] = !mIsSelected[position];
        notifyDataSetChanged();
    }

    public final void setButtons(Button deleteButton, Button selectAllButton) {
        mDeleteButton = deleteButton;
        mSelectAllButton = selectAllButton;
    }

    @Override
    public final void setDatas(List<BookShelf> datas) {
        super.setDatas(datas);
        mIsSelected = new boolean[datas.size()];
    }

    public final boolean isEditing() {
        return mIsEditing;
    }

    public final void setBatchEdit() {
        mIsEditing = true;
        notifyDataSetChanged();
    }

    public final void resetAll() {
        mIsEditing = false;
        for (int i = 0; i < mIsSelected.length; ++i) {
            mIsSelected[i] = false;
        }
        mSelectedBooks.clear();
        notifyDataSetChanged();
    }

    public final void selectAll() {
        for (boolean isSelected : mIsSelected) {
            if (!isSelected) {
                for (int i = 0; i < mIsSelected.length; i++) {
                    mIsSelected[i] = true;
                }
                for (int i = 0; i < mIsSelected.length; ++i) {
                    BookShelf bookShelf = getItem(i);
                    if (!mSelectedBooks.contains(bookShelf)) {
                        mSelectedBooks.add(bookShelf);
                    }
                }
                notifyDataSetChanged();
                return;
            }
        }
        for (int j = 0; j < mIsSelected.length; ++j) {
            mIsSelected[j] = false;
        }
        mSelectedBooks.clear();
        notifyDataSetChanged();
    }

    public final List<BookShelf> getSelectedBooks() {
        return mSelectedBooks;
    }

    @Override
    public int getItemViewType(int position) {
        return getItem(position).getType();
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {
        BookShelf bookShelf = getItem(position);
        int type = bookShelf.getType();
        if (convertView == null) {
            switch (type) {
                case BookShelf.SHELF_BOOK:
                    convertView = mLayoutInflater.inflate(R.layout.list_item_shelf_book, parent, false);
                    break;
                case BookShelf.SHELF_FEED:
                    convertView = mLayoutInflater.inflate(R.layout.list_item_shelf_feed, parent, false);
                    break;
                default:
                    break;
            }
        } else {
            if (mIsEditing) {
                if (type == BookShelf.SHELF_FEED) {
                    convertView = mLayoutInflater.inflate(R.layout.list_item_shelf_empty, parent, false);
                }
            } else {
                switch (type) {
                    case BookShelf.SHELF_BOOK:
                        convertView = mLayoutInflater.inflate(R.layout.list_item_shelf_book, parent, false);
                        break;
                    case BookShelf.SHELF_FEED:
                        convertView = mLayoutInflater.inflate(R.layout.list_item_shelf_feed, parent, false);
                        break;
                    default:
                        break;
                }
            }
        }
        switch (type) {
            case BookShelf.SHELF_BOOK:
                BookViewHolder bookViewHolder = new BookViewHolder(convertView);
                BookReadRecord bookRecord = bookShelf.getBookRecord();
                bookViewHolder.cover.setImageUrl(bookRecord.getFullCover(), R.drawable.cover_default);
                bookViewHolder.title.setText(bookRecord.getTitle());
                bookViewHolder.desc.setText(bookRecord.buildDesc());
                if (bookRecord.isUnread() && !mIsEditing) {
                    bookViewHolder.flag.setType(3);
                } else {
                    bookViewHolder.flag.setType(0);
                }
                if (mIsEditing) {
                    bookViewHolder.check.setVisibility(View.VISIBLE);
                } else {
                    bookViewHolder.check.setVisibility(View.GONE);
                }
                isAdding = true;
                if (mIsSelected.length <= position) {
                    boolean[] selected = new boolean[position + 1];
                    System.arraycopy(mIsSelected, 0, selected, 0, mIsSelected.length);
                    mIsSelected = selected;
                }
                bookViewHolder.check.setChecked(mIsSelected[position]);
                changeSelected(position);
                isAdding = false;
                bookViewHolder.check.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        if (!isAdding) {
                            mIsSelected[position] = isChecked;
                            changeSelected(position);
                        }
                    }
                });
                bookViewHolder.top.setVisibility(bookRecord.isTop() ? View.VISIBLE : View.GONE);
                int readMode = bookRecord.getReadMode();
                boolean isDownloading = false;
                if (readMode != -1) {
                    String downloadedSource = bookRecord.getDownloadedSource();
                    String sourceName = CommonUtil.getSourceName(readMode);
                     if (downloadedSource != null) {
                        isDownloading = downloadedSource.contains(sourceName);
                    }
                }
                final String bookId = bookRecord.getBookId();
                if (!CommonUtil.isDownloading(bookId)) {
                    if (isDownloading) {
                        bookViewHolder.coverLoadingLayer.f();
                        return convertView;
                    }
                    bookViewHolder.coverLoadingLayer.c();
                    return convertView;
                }
                BookDlRecord bookDlRecord = BookDlRecord.get(bookId);
                if (bookDlRecord == null) {
                    bookViewHolder.coverLoadingLayer.c();
                    return convertView;
                }
                int progress = bookDlRecord.getProgress();
                int total = bookDlRecord.getTotal();
                if (total > 0) {
                    progress = 5 + (int) (95.0f * (float) ((int) (100.0f * ((float) progress / (float) total))) / 100.0f);
                }
                int status = bookDlRecord.getStatus();
                if (status == 2) {
                    bookViewHolder.coverLoadingLayer.setProgress(progress);
                } else if (status == 3) {
                    bookViewHolder.coverLoadingLayer.b();
                } else if (status == 1) {
                    bookViewHolder.coverLoadingLayer.d();
                } else if (status == 5) {
                    bookViewHolder.coverLoadingLayer.e();
                } else if (!bookViewHolder.coverLoadingLayer.g()) {
                    bookViewHolder.coverLoadingLayer.c();
                }
                bookViewHolder.coverLoadingLayer.setCoverListener(new CoverLoadingLayer.y() {
                    @Override
                    public void a() {
                        BusProvider.getInstance().post(new DownloadStatusEvent(bookId, 3));
                    }

                    @Override
                    public void b() {
                        new BookDownloadManager((Activity) mContext).startDownload(bookId, 0, 0);
                    }

                    @Override
                    public void c() {
                        BookDlRecord bookDlRecord = BookDlRecord.get(bookId);
                        if (bookDlRecord != null) {
                            bookDlRecord.setStatus(3);
                            bookDlRecord.save();
                            BusProvider.getInstance().post(new DownloadProgressEvent());
                        }
                    }
                });
            case BookShelf.SHELF_FEED:
                if (mIsEditing) return convertView;
                FeedViewHolder feedViewHolder = new FeedViewHolder(convertView);
                BookFeed bookFeed = bookShelf.getBookFeed();
                feedViewHolder.title.setText(bookFeed.getTitle());
                if (bookFeed.isFat()) {
                    feedViewHolder.flag.setType(4);
                    return convertView;
                }
                feedViewHolder.flag.setType(0);
        }
        return convertView;
    }

    @Override
    public int getViewTypeCount() {
        return 2;
    }

    class FeedViewHolder {
        BookShelfFlagView flag;
        TextView title;

        FeedViewHolder(View view) {
            title = (TextView) view.findViewById(R.id.desc);
            flag = (BookShelfFlagView) view.findViewById(R.id.flag);
        }
    }

    class BookViewHolder {
        CheckBox check;
        CoverView cover;
        CoverLoadingLayer coverLoadingLayer;
        TextView desc;
        BookShelfFlagView flag;
        TextView title;
        View top;

        BookViewHolder(View view) {
            title = (TextView) view.findViewById(R.id.title);
            desc = (TextView) view.findViewById(R.id.desc);
            flag = (BookShelfFlagView) view.findViewById(R.id.flag);
            top = view.findViewById(R.id.top);
            cover = (CoverView) view.findViewById(R.id.cover);
            coverLoadingLayer = (CoverLoadingLayer) view.findViewById(R.id.cover_loading);
            check = (CheckBox) view.findViewById(R.id.checked);
        }
    }
}
