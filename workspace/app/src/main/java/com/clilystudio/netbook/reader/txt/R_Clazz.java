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

final class R_Clazz extends W<T_Clazz> implements AdapterView.OnItemClickListener {
    private /* synthetic */ ScanTxtFileActivity a;

    public R_Clazz(ScanTxtFileActivity scanTxtFileActivity, LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_book_file);
        this.a = scanTxtFileActivity;
     }

    private static void a(ImageView imageView, boolean bl) {
        if (bl) {
            imageView.setImageResource(R.drawable.green_tick_circle);
            imageView.setContentDescription("\u9009\u4e2d");
            return;
        }
        imageView.setImageResource(R.drawable.gray_tick_circle);
        imageView.setContentDescription("\u672a\u9009\u4e2d");
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(R_Clazz r) {
        Iterator iterator = r.c().iterator();
        while (iterator.hasNext()) {
            ((T_Clazz) iterator.next()).a(ScanTxtFileActivity.c(r.a));
        }
        ScanTxtFileActivity scanTxtFileActivity = r.a;
        boolean bl = !ScanTxtFileActivity.c(r.a);
        ScanTxtFileActivity.a(scanTxtFileActivity, bl);
        TextView textView = (TextView) r.a.a().a().findViewById(R.id.actionbar_custom_right_text);
        String string = ScanTxtFileActivity.c(r.a) ? "\u5168\u9009" : "\u5168\u4e0d\u9009";
        textView.setText(string);
        r.notifyDataSetChanged();
    }

    static /* synthetic */ void a(R_Clazz r, ImageView imageView, boolean bl) {
        R_Clazz.a(imageView, bl);
    }

    static /* synthetic */ List b(R_Clazz r) {
        ArrayList<BookFile> arrayList = new ArrayList<BookFile>();
        for (T_Clazz t : r.c()) {
            if (!t.b()) continue;
            arrayList.add(t.a());
        }
        return arrayList;
    }

    @Override
    protected final /* synthetic */ void a(int n, T_Clazz object) {
        T_Clazz t = (T_Clazz) object;
        BookFile bookFile = t.a();
        boolean bl = t.b();
        this.a(0, bookFile.getName());
        ImageView imageView = (ImageView) this.a(1, ImageView.class);
        R_Clazz.a(imageView, bl);
        imageView.setOnClickListener(new S(this, t, imageView));
        this.a(2, bookFile.getSize());
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.title, R.id.checkbox, R.id.size};
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        ((T_Clazz) this.c().get(n)).c();
        ScanTxtFileActivity.a(this.a).notifyDataSetChanged();
    }
}
