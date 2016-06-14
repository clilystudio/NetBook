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
        super(layoutInflater, 2130903287);
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
            imageView.setImageResource(2130838009);
        } else if (string.contains("leidian")) {
            imageView.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            imageView.setImageResource(2130838014);
        } else if (string.contains("sogou")) {
            imageView.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            imageView.setImageResource(2130838016);
        } else if (string.contains("easou")) {
            imageView.setVisibility(View.VISIBLE);
            textView.setVisibility(View.GONE);
            imageView.setImageResource(2130838011);
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
        return new int[]{2131493696, 2131493697, 2131493698, 2131493320, 2131493700, 2131493699};
    }
}
