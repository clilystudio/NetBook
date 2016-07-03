package com.clilystudio.netbook.reader;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;

public class ReaderWebActionBar extends RelativeLayout {
    private OnBtnClickListener a;
    private TextView b;
    private View d;
    private TextView f;

    public ReaderWebActionBar(Context context) {
        super(context);
    }

    public ReaderWebActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ReaderWebActionBar(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    static /* synthetic */ void a(ReaderWebActionBar readerWebActionBar, int n) {
        if (readerWebActionBar.a != null) {
            readerWebActionBar.a.a(n);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(boolean bl) {
        View view = this.findViewById(R.id.reader_ab_chapter_url_view);
         view.setVisibility(bl ? VISIBLE : GONE);
    }

    public final void a(boolean bl) {
        this.d.setVisibility(bl ? VISIBLE : INVISIBLE);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (TextView) this.findViewById(R.id.reader_oper_top_title);
        View c = this.findViewById(R.id.reader_ab_topic);
        this.d = this.findViewById(R.id.reader_ab_topic_count);
        View e = this.findViewById(R.id.reader_ab_read_mode);
        this.f = (TextView) this.findViewById(R.id.reader_ab_chapter_url);
        View view = this.findViewById(R.id.reader_oper_back);
        View.OnClickListener cA2 = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReaderWebActionBar.a(ReaderWebActionBar.this, v.getId());
            }
        };
        c.setOnClickListener(cA2);
        e.setOnClickListener(cA2);
        this.findViewById(R.id.reader_ab_chapter_url_view).setOnClickListener(cA2);
        view.setOnClickListener(cA2);
    }

    public void setChapterLink(String string) {
        if (string == null || "".equals(string)) {
            this.b(false);
            return;
        }
        this.b(true);
        this.f.setText(string);
    }

    public void setOnBtnClickListener(OnBtnClickListener a2) {
        this.a = a2;
    }

    public void setTitle(String string) {
        this.b.setText(string);
    }

    public void setTopicCount() {
    }

    public interface OnBtnClickListener {
        void a(int n);
    }
}
