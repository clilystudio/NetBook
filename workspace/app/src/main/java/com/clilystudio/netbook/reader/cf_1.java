package com.clilystudio.netbook.reader;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.u;
import com.clilystudio.netbook.model.ChapterLink;

final class cf extends u {

    private int a;
    private int b;
    private LayoutInflater c;
    private ReaderTocDialog d;
    public cf(ReaderTocDialog ReaderTocDialog1, LayoutInflater LayoutInflater2) {
        d = ReaderTocDialog1;
        a = com.clilystudio.netbook.hpay100.a.a.b((Context) ReaderTocDialog1.getActivity(), 2130771984, ReaderTocDialog.a(ReaderTocDialog1));
        b = com.clilystudio.netbook.hpay100.a.a.b((Context) ReaderTocDialog1.getActivity(), 2130771985, ReaderTocDialog.a(ReaderTocDialog1));
        c = LayoutInflater2;
    }

    public final View getView(int int1, View View2, ViewGroup ViewGroup3) {
        ChapterLink ChapterLink4 = (ChapterLink) getItem(int1);
        View View5;

        if (View2 == null)
            View5 = c.inflate(2130903311, ViewGroup3, false);
        else
            View5 = View2;
        if (ChapterLink4 != null) {
            ImageView ImageView6 = (ImageView) View5.findViewById(2131493756);
            TextView TextView7 = (TextView) View5.findViewById(2131493605);
            int int8 = ReaderTocDialog.a(d, int1);

            TextView7.setText((CharSequence) new StringBuilder().append(int8 + 1).append(". ").append(ChapterLink4.getTitle()).toString());
            if (int8 == ReaderTocDialog.b(d).k()) {
                ImageView6.setImageLevel(1);
                TextView7.setTextColor(b);
            } else {
                String String9 = ChapterLink4.getLink();

                if (ReaderTocDialog.c(d) != null && ReaderTocDialog.c(d).contains(String9))
                    ImageView6.setImageLevel(2);
                else
                    ImageView6.setImageLevel(0);
                TextView7.setTextColor(a);
            }
            if (!com.clilystudio.netbook.reader.ReaderTocDialog.a(d, ChapterLink4))
                View5.findViewById(2131493757).setVisibility(0);
            else
                View5.findViewById(2131493757).setVisibility(8);
        }
        return View5;
    }
}
