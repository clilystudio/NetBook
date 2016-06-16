package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
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
    static /* synthetic */ void a(AudiobookCategoryActivity audiobookCategoryActivity, TagList tagList) {
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
            Tag tag = list.get(n5);
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
            textView.setOnClickListener(new v(audiobookCategoryActivity, tag));
            tableRow.addView((View) textView, layoutParams2);
            ++n5;
        }
    }

    static /* synthetic */ void b(AudiobookCategoryActivity audiobookCategoryActivity) {
        h h2 = new h(audiobookCategoryActivity).a(true);
        h2.e = "\u662f\u5426\u6253\u5f00\u559c\u9a6c\u62c9\u96c5FM\u4e0b\u8f7d\u9875";
        h2.b("\u53d6\u6d88", (DialogInterface.OnClickListener) ((Object) new t(audiobookCategoryActivity))).a("\u786e\u5b9a", (DialogInterface.OnClickListener) ((Object) new s(audiobookCategoryActivity))).b();
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
        this.c.setOnClickListener(new q(this));
        this.b();
        ((RelativeLayout) this.findViewById(R.id.bottom_bg)).setBackgroundResource(am.b((Context) this, (int) R.attr.audiobookInfoBottomBg));
        TextView textView = (TextView) this.findViewById(R.id.BottomContentText);
        SpannableString spannableString = new SpannableString(this.getResources().getString(R.string.ximalaya_statement));
        spannableString.setSpan(new ForegroundColorSpan(this.getResources().getColor(R.color.tweet_operator_text_color)), 0, 5, 33);
        spannableString.setSpan(new ForegroundColorSpan(this.getResources().getColor(R.color.audio_book_black)), 5, 11, 33);
        spannableString.setSpan(new ForegroundColorSpan(this.getResources().getColor(R.color.tweet_operator_text_color)), 11, 13, 33);
        textView.setText(spannableString);
        textView.setOnClickListener(new r(this));
    }
}
