package com.clilystudio.netbook.reader.txt;

import android.support.v7.app.a;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.util.W;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class R extends W<T> implements AdapterView.OnItemClickListener {
    private /* synthetic */ ScanTxtFileActivity a;

    public R(ScanTxtFileActivity scanTxtFileActivity, LayoutInflater layoutInflater) {
        this.a = scanTxtFileActivity;
        super(layoutInflater, 2130903266);
    }

    private static void a(ImageView imageView, boolean bl) {
        if (bl) {
            imageView.setImageResource(2130837820);
            imageView.setContentDescription("\u9009\u4e2d");
            return;
        }
        imageView.setImageResource(2130837818);
        imageView.setContentDescription("\u672a\u9009\u4e2d");
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(R r) {
        Iterator iterator = r.c().iterator();
        while (iterator.hasNext()) {
            ((T) iterator.next()).a(ScanTxtFileActivity.c(r.a));
        }
        ScanTxtFileActivity scanTxtFileActivity = r.a;
        boolean bl = !ScanTxtFileActivity.c(r.a);
        ScanTxtFileActivity.a(scanTxtFileActivity, bl);
        TextView textView = (TextView) r.a.a().a().findViewById(2131493008);
        String string = ScanTxtFileActivity.c(r.a) ? "\u5168\u9009" : "\u5168\u4e0d\u9009";
        textView.setText(string);
        r.notifyDataSetChanged();
    }

    static /* synthetic */ void a(R r, ImageView imageView, boolean bl) {
        R.a(imageView, bl);
    }

    static /* synthetic */ List b(R r) {
        ArrayList<BookFile> arrayList = new ArrayList<BookFile>();
        for (T t : r.c()) {
            if (!t.b()) continue;
            arrayList.add(t.a());
        }
        return arrayList;
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        T t = (T) object;
        BookFile bookFile = t.a();
        boolean bl = t.b();
        this.a(0, bookFile.getName());
        ImageView imageView = (ImageView) this.a(1, ImageView.class);
        R.a(imageView, bl);
        imageView.setOnClickListener(new S(this, t, imageView));
        this.a(2, bookFile.getSize());
    }

    @Override
    protected final int[] a() {
        return new int[]{2131492936, 2131493040, 2131493625};
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        ((T) this.c().get(n)).c();
        ScanTxtFileActivity.a(this.a).notifyDataSetChanged();
    }
}
