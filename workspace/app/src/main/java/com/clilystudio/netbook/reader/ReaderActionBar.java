package com.clilystudio.netbook.reader;

import android.content.Context;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.CommonUtil;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ReaderActionBar extends RelativeLayout {
    private View a;
    private OnBtnClickListener b;
    private ReaderStyle c;
    private TextView d;
    private ImageView e;
    private TextView f;
    private View h;
    private View i;
    private View j;
    private TextView k;

    public ReaderActionBar(Context context) {
        super(context);
    }

    public ReaderActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ReaderActionBar(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    static /* synthetic */ ReaderStyle a(ReaderActionBar readerActionBar) {
        return readerActionBar.c;
    }

    static /* synthetic */ void a(ReaderActionBar readerActionBar, int n) {
        if (readerActionBar.b != null) {
            readerActionBar.b.a(n);
        }
    }

    public final void a() {
        if (this.c.h()) {
            this.d.setText(R.string.normal_mode);
            this.e.setImageResource(R.drawable.ic_menu_mode_normal_normal);
            return;
        }
        this.d.setText(R.string.night_mode);
        this.e.setImageResource(R.drawable.ic_menu_mode_night_normal);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (bl) {
            layoutParams.setMargins(0, CommonUtil.k(this.getContext()), 0, 0);
        } else {
            layoutParams.setMargins(0, 0, 0, 0);
        }
        this.setLayoutParams(layoutParams);
    }

    public final TextView b() {
        return this.k;
    }

    public final void b(boolean bl) {
        TextView textView = (TextView) this.findViewById(R.id.read_opt_orient_text);
        if (bl) {
            textView.setText(R.string.read_landscape);
            return;
        }
        textView.setText(R.string.read_portrait);
    }

    public final void c() {
        this.a.setVisibility(View.GONE);
    }

    public final void d() {
        this.h.setVisibility(View.GONE);
    }

    public final void e() {
        this.j.setVisibility(View.GONE);
    }

    public final void f(boolean bl) {
         this.i.setVisibility(bl ? VISIBLE : INVISIBLE);
    }

    public final void g(boolean bl) {
        View view = this.findViewById(R.id.reader_ab_chapter_url_view);
        view.setVisibility(bl ? VISIBLE : GONE);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, CommonUtil.k(this.getContext()), 0, 0);
        this.setLayoutParams(layoutParams);
        View.OnClickListener ah2 = new View.OnClickListener() {
           @Override
            public void onClick(View v) {
               ReaderActionBar.a(ReaderActionBar.this, v.getId());
            }
        };
        this.f = (TextView) this.findViewById(R.id.reader_oper_top_title);
        this.h = this.findViewById(R.id.reader_ab_topic);
        this.i = this.findViewById(R.id.reader_ab_topic_count);
        this.d = (TextView) this.findViewById(R.id.btn_mode_text);
        this.e = (ImageView) this.findViewById(R.id.btn_mode_image);
        this.a = this.findViewById(R.id.reader_download);
        this.j = this.findViewById(R.id.reader_ab_read_mode);
        this.k = (TextView) this.findViewById(R.id.reader_ab_chapter_url);
        this.h.setOnClickListener(ah2);
        this.j.setOnClickListener(ah2);
        this.a.setOnClickListener(ah2);
        this.findViewById(R.id.reader_ab_chapter_url_view).setOnClickListener(ah2);
        this.findViewById(R.id.reader_oper_back).setOnClickListener(ah2);
        this.findViewById(R.id.read_opt_setting).setOnClickListener(ah2);
        this.findViewById(R.id.read_opt_toc).setOnClickListener(ah2);
        this.findViewById(R.id.read_opt_orientation).setOnClickListener(ah2);
        this.findViewById(R.id.reader_ab_more).setOnClickListener(ah2);
        this.findViewById(R.id.read_opt_night).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                ReaderActionBar.a(ReaderActionBar.this).a();
                ReaderActionBar.this.a();
            }
        });
    }

    public void setChapterLink(String string) {
        if (string == null || "".equals(string)) {
            this.g(false);
            return;
        }
        this.g(true);
        this.k.setText(string);
    }

    public void setOnBtnClickListener(OnBtnClickListener a2) {
        this.b = a2;
    }

    public void setReaderStyle(ReaderStyle bZ2) {
        this.c = bZ2;
        this.a();
    }

    public void setTitle(String string) {
        this.f.setText(string);
    }

    public interface OnBtnClickListener {
        void a(int n2);
    }
}
