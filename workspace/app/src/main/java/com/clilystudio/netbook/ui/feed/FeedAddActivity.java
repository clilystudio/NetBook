package com.clilystudio.netbook.ui.feed;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.ListView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.FeedAddedEvent;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.BaseCallBack;
import com.clilystudio.netbook.util.BaseDownloadAdapter;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.CoverView;

import java.util.ArrayList;
import java.util.List;

public class FeedAddActivity extends BaseActivity {
    private BaseDownloadAdapter<BookReadRecord> a;
    private ListView b;
    private ArrayList<BookReadRecord> c = new ArrayList<>();

    static void a(FeedAddActivity feedAddActivity) {
        if (feedAddActivity.c.isEmpty()) {
            ToastUtil.showShortToast(feedAddActivity, "你还没有选择移入的书籍");
            return;
        }
        for (BookReadRecord bookReadRecord : feedAddActivity.c) {
            bookReadRecord.setFeeding(true);
            bookReadRecord.setChapterCountAtFeed(bookReadRecord.getChapterCount());
            bookReadRecord.save();
            BusProvider.getInstance().post(new FeedAddedEvent(bookReadRecord));
        }
        Intent intent = new Intent(feedAddActivity, FeedListActivity.class);
        intent.addFlags(335544320);
        feedAddActivity.startActivity(intent);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_feed_add);
        this.a(R.string.feed_select_book, R.string.feed_add_ok, new BaseCallBack() {
            @Override
            public void a() {
                FeedAddActivity.a(FeedAddActivity.this);
            }
        });
        this.b = (ListView) this.findViewById(R.id.book_feed_add_list);
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                BookReadRecord bookReadRecord = FeedAddActivity.this.a.getItem(position);
                if (FeedAddActivity.this.c.contains(bookReadRecord)) {
                    FeedAddActivity.this.c.remove(bookReadRecord);
                } else {
                    FeedAddActivity.this.c.add(bookReadRecord);
                }
                FeedAddActivity.this.a.notifyDataSetChanged();
            }
        });
    }

    @Override
    public void onResume() {
        super.onResume();
        this.a = new BaseDownloadAdapter<BookReadRecord>(this.getLayoutInflater(), R.layout.list_item_feed_add){

            @Override
            protected void a(int var1, BookReadRecord bookReadRecord) {
                CoverView coverView = this.getTagView(0);
                coverView.setImageUrl(bookReadRecord.getFullCover(), R.drawable.cover_default);
                this.setText(1, bookReadRecord.getTitle());
                CheckBox checkBox = this.getTagView(2);
                checkBox.setChecked(false);
                BookReadRecord bookReadRecord2 = FeedAddActivity.this.a.getItem(var1);
                int n2 = 0;
                while (n2 < FeedAddActivity.this.c.size()) {
                    if (FeedAddActivity.this.c.contains(bookReadRecord2)) {
                        checkBox.setChecked(true);
                    } else {
                        checkBox.setChecked(false);
                    }
                    ++n2;
                }
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.book_feed_add_cover, R.id.book_feed_add_title, R.id.book_feed_add_checkbox};
            }
        };
        this.b.setAdapter(this.a);
        List<BookReadRecord> list = BookReadRecord.getAllWithTopNoFeed();
        this.a.a(list);
        boolean bl = !list.isEmpty();
        View view = this.findViewById(R.id.book_feed_add_content);
        View view2 = this.findViewById(R.id.book_feed_add_empty);
        if (bl) {
            view.setVisibility(View.VISIBLE);
            view2.setVisibility(View.GONE);
        } else {
            view.setVisibility(View.GONE);
            view2.setVisibility(View.VISIBLE);
        }
        this.c.clear();
    }
}
