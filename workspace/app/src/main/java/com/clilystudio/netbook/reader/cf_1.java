package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.u;
import com.clilystudio.netbook.model.ChapterLink;

final class cf extends u<ChapterLink> {
    private int a;
    private int b;
    private LayoutInflater c;
    private /* synthetic */ ReaderTocDialog d;

    public cf(ReaderTocDialog readerTocDialog, LayoutInflater layoutInflater) {
        this.d = readerTocDialog;
        this.a = a.b((Context) readerTocDialog.getActivity(), 2130771984, ReaderTocDialog.a(readerTocDialog));
        this.b = a.b((Context) readerTocDialog.getActivity(), 2130771985, ReaderTocDialog.a(readerTocDialog));
        this.c = layoutInflater;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        ChapterLink chapterLink = (ChapterLink) this.getItem(n);
        View view2 = view == null ? this.c.inflate(2130903311, viewGroup, false) : view;
        if (chapterLink == null) {
            return view2;
        }
        ImageView imageView = (ImageView) view2.findViewById(2131493756);
        TextView textView = (TextView) view2.findViewById(2131493605);
        int n2 = ReaderTocDialog.a(this.d, n);
        textView.setText("" + (n2 + 1) + ". " + chapterLink.getTitle());
        if (n2 == ReaderTocDialog.b(this.d).k()) {
            imageView.setImageLevel(1);
            textView.setTextColor(this.b);
        } else {
            String string = chapterLink.getLink();
            if (ReaderTocDialog.c(this.d) != null && ReaderTocDialog.c(this.d).contains(string)) {
                imageView.setImageLevel(2);
            } else {
                imageView.setImageLevel(0);
            }
            textView.setTextColor(this.a);
        }
        if (!ReaderTocDialog.a(this.d, chapterLink)) {
            view2.findViewById(2131493757).setVisibility(0);
            return view2;
        }
        view2.findViewById(2131493757).setVisibility(8);
        return view2;
    }
}
