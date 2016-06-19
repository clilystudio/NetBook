package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.util.as;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.model.tag.Tag;
import com.ximalaya.ting.android.opensdk.model.tag.TagList;

import java.util.HashMap;
import java.util.List;

public class AudiobookCategoryActivity extends BaseActivity {
    private CommonRequest a;
    private View b;
    private View c;
    private View e;

    public static Intent a(Context context) {
        return new d().a(context, AudiobookCategoryActivity.class).a();
    }

    static /* synthetic */ void a(AudiobookCategoryActivity audiobookCategoryActivity) {
        audiobookCategoryActivity.b();
    }

    static /* synthetic */ void a(AudiobookCategoryActivity audiobookCategoryActivity, int n) {
        audiobookCategoryActivity.a(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final AudiobookCategoryActivity audiobookCategoryActivity, TagList tagList) {
        List<Tag> list = tagList.getTagList();
        if (list.size() == 0) {
            return;
        }
        int n = audiobookCategoryActivity.getResources().getDisplayMetrics().widthPixels / 3;
        int n2 = a.a((Context) audiobookCategoryActivity, 56.0f);
        TableLayout tableLayout = (TableLayout) audiobookCategoryActivity.findViewById(R.id.tags_layout_category);
        TableRow.LayoutParams layoutParams = new TableRow.LayoutParams(-1, -2);
        int n3 = am.b((Context) audiobookCategoryActivity, (int) R.attr.audiobookCategoryItemSelector);
        for (int j = 0; j < list.size(); ++j) {
            String string = list.get(j).getTagName();
            if (!string.equals("QQ\u9605\u8bfb") && !string.equals("\u901f\u64ad\u4e13\u533a") && !string.equals("\u63a8\u7406\u4e16\u754c")) continue;
            list.remove(j);
            --j;
        }
        TableRow tableRow = null;
        int n4 = 0;
        int n5 = 0;
        while (n5 < list.size()) {
            final Tag tag = list.get(n5);
            if (n5 % 3 == 0) {
                tableRow = new TableRow(audiobookCategoryActivity);
                tableLayout.addView((View) tableRow, layoutParams);
                ++n4;
            }
            TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(n, n2);
            if (n4 == 1) {
                if (n5 % 3 == 1) {
                    layoutParams2.setMargins(-1, 0, -1, 0);
                } else {
                    layoutParams2.setMargins(0, 0, 0, 0);
                }
            } else if (n5 % 3 == 1) {
                layoutParams2.setMargins(-1, -1, -1, 0);
            } else {
                layoutParams2.setMargins(0, -1, 0, 0);
            }
            TextView textView = new TextView(audiobookCategoryActivity);
            textView.setText(tag.getTagName());
            textView.setGravity(17);
            textView.setTextAppearance(audiobookCategoryActivity, R.style.book_category_item_large);
            textView.setBackgroundResource(n3);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    audiobookCategoryActivity.startActivity(AudiobookCategoryListActivity.a(audiobookCategoryActivity, tag.getTagName()));
                }
            });
            tableRow.addView((View) textView, layoutParams2);
            ++n5;
        }
    }

    static /* synthetic */ void b(final AudiobookCategoryActivity audiobookCategoryActivity) {
        h h2 = new h(audiobookCategoryActivity).a(true);
        h2.e = "是否打开喜马拉雅FM下载页";
        h2.b("取消",new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        }).a("确定",new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialog, int which) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("http://m.ximalaya.com/?from=alex-04"));
                audiobookCategoryActivity.startActivity(intent);
                MiStatInterface.recordCountEvent("ximalaya_url_click", null);
           }
        }).b();
    }

    private void a(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.e.setVisibility(View.VISIBLE);
                this.b.setVisibility(View.GONE);
                this.c.setVisibility(View.GONE);
                return;
            }
            case 0: {
                this.e.setVisibility(View.GONE);
                this.b.setVisibility(View.VISIBLE);
                this.c.setVisibility(View.GONE);
                return;
            }
            case 2:
        }
        this.e.setVisibility(View.GONE);
        this.b.setVisibility(View.GONE);
        this.c.setVisibility(View.VISIBLE);
    }

    private void b() {
        this.a(0);
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("category_id", "3");
        hashMap.put("type", "0");
        CommonRequest.getTags(hashMap, new u(this));
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_audiobook_category);
        this.b(this.getResources().getString(R.string.audiobooks));
        as.a();
        this.a = as.b();
        this.e = this.findViewById(R.id.content_category);
        this.b = this.findViewById(R.id.content_loading_pb);
        this.c = this.findViewById(R.id.content_load_error);
        this.c.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AudiobookCategoryActivity.a(AudiobookCategoryActivity.this);
            }
        });
        this.b();
        ((RelativeLayout) this.findViewById(R.id.bottom_bg)).setBackgroundResource(am.b((Context) this, (int) R.attr.audiobookInfoBottomBg));
        TextView textView = (TextView) this.findViewById(R.id.BottomContentText);
        SpannableString spannableString = new SpannableString(this.getResources().getString(R.string.ximalaya_statement));
        spannableString.setSpan(new ForegroundColorSpan(this.getResources().getColor(R.color.tweet_operator_text_color)), 0, 5, 33);
        spannableString.setSpan(new ForegroundColorSpan(this.getResources().getColor(R.color.audio_book_black)), 5, 11, 33);
        spannableString.setSpan(new ForegroundColorSpan(this.getResources().getColor(R.color.tweet_operator_text_color)), 11, 13, 33);
        textView.setText(spannableString);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AudiobookCategoryActivity.b(AudiobookCategoryActivity.this);
            }
        });
    }
}
