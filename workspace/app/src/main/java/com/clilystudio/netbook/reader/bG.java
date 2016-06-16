package com.clilystudio.netbook.reader;

import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;

import java.util.Date;

public final class bG extends W<TocSummary> {
    private /* synthetic */ ReaderMixActivity a;

    public bG(ReaderMixActivity readerMixActivity, LayoutInflater layoutInflater) {
        this.a = readerMixActivity;
        super(layoutInflater, R.layout.list_item_mix_source);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        TocSummary tocSummary = (TocSummary) object;
        String string = tocSummary.getHost();
        ImageView imageView = (ImageView) this.a(0, ImageView.class);
        TextView textView = (TextView) this.a(1, TextView.class);
        if (string.contains("baidu")) {
            imageView.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            imageView.setImageResource(R.drawable.mode_list_item_bd);
        } else if (string.contains("leidian")) {
            imageView.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            imageView.setImageResource(R.drawable.mode_list_item_ld);
        } else if (string.contains("sogou")) {
            imageView.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            imageView.setImageResource(R.drawable.mode_list_item_sg);
        } else if (string.contains("easou")) {
            imageView.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            imageView.setImageResource(R.drawable.mode_list_item_es);
        } else {
            imageView.setVisibility(View.GONE);
            textView.setVisibility(View.VISIBLE);
            textView.setText(string.substring(0, 1).toUpperCase());
        }
        this.a(2, string);
        this.a(3, t.e((Date) tocSummary.getUpdated()) + "\uff1a");
        this.a(4, tocSummary.getLastChapter());
        if (string.equals(ReaderMixActivity.a(this.a))) {
            this.a(5, false);
            return;
        }
        this.a(5, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.source_icon_logo, R.id.source_icon_text, R.id.source, R.id.update_time, R.id.last_chapter, R.id.selected};
    }
}
