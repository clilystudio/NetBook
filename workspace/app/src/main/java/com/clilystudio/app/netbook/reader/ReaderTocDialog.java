package com.clilystudio.app.netbook.reader;

import android.annotation.TargetApi;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.app.netbook.model.ChapterLink;

import java.util.LinkedList;

public class ReaderTocDialog extends DialogFragment
        implements AdapterView.OnItemClickListener {
    private cf a;
    private ListView b;
    private TextView c;
    private Reader d;
    private DialogInterface.OnClickListener e;
    private DialogInterface.OnCancelListener f;
    private DialogInterface.OnDismissListener g;
    private LinkedList<String> h;
    private int i;

    private int a(int paramInt) {
        return -1 + this.d.f() - paramInt;
    }

    public static ReaderTocDialog a() {
        return new ReaderTocDialog();
    }

    private boolean a(ChapterLink paramChapterLink) {
        if (!paramChapterLink.isVip())
            return true;
        try {
            String str = paramChapterLink.getLink().substring(1 + paramChapterLink.getLink().lastIndexOf("/"));
            boolean bool = this.d.e().containsKey(str);
            return bool;
        } catch (Exception localException) {
        }
        return true;
    }

    public final void a(DialogInterface.OnCancelListener paramOnCancelListener) {
        this.f = paramOnCancelListener;
    }

    public final void a(DialogInterface.OnClickListener paramOnClickListener) {
        this.e = paramOnClickListener;
    }

    public final void a(DialogInterface.OnDismissListener paramOnDismissListener) {
        this.g = paramOnDismissListener;
    }

    public final void a(Reader paramReader) {
        this.d = paramReader;
    }

    public final void a(Reader paramReader, LinkedList<String> paramLinkedList) {
        this.d = paramReader;
        this.h = paramLinkedList;
    }

    public void onCancel(DialogInterface paramDialogInterface) {
        if (this.f != null)
            this.f.onCancel(paramDialogInterface);
        super.onCancel(paramDialogInterface);
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        if (bZ.a(getActivity())) ;
        for (this.i = 2131165538; ; this.i = 2131165537) {
            setStyle(1, this.i);
            return;
        }
    }

    @TargetApi(11)
    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        View localView = paramLayoutInflater.inflate(2130903200, paramViewGroup, false);
        this.c = ((TextView) localView.findViewById(2131493419));
        this.b = ((ListView) localView.findViewById(2131493421));
        this.a = new cf(this, LayoutInflater.from(new ContextThemeWrapper(getActivity(), this.i)));
        this.b.setOnItemClickListener(this);
        this.b.setAdapter(this.a);
        if (a.i())
            this.b.setFastScrollAlwaysVisible(true);
        return localView;
    }

    public void onDismiss(DialogInterface paramDialogInterface) {
        if (this.g != null)
            this.g.onDismiss(paramDialogInterface);
        super.onDismiss(paramDialogInterface);
    }

    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        if (this.e != null)
            this.e.onClick(getDialog(), a(paramInt));
    }

    public void onResume() {
        super.onResume();
        cf localcf = this.a;
        ChapterLink[] arrayOfChapterLink = this.d.h();
        if (arrayOfChapterLink != null) {
            int j = arrayOfChapterLink.length;
            if (arrayOfChapterLink != null) {
                int k = 0;
                int m = -1 + Math.min(arrayOfChapterLink.length, j);
                while (m > k) {
                    ChapterLink localChapterLink = arrayOfChapterLink[m];
                    arrayOfChapterLink[m] = arrayOfChapterLink[k];
                    arrayOfChapterLink[k] = localChapterLink;
                    m--;
                    k++;
                }
            }
        }
        localcf.a(arrayOfChapterLink);
    }

    public void onStart() {
        super.onStart();
        if (this.d == null) {
            dismissAllowingStateLoss();
            return;
        }
        this.c.setText(this.d.j());
        int j = this.d.k();
        if (j == -1) {
            this.b.setSelection(0);
            return;
        }
        this.b.setSelection(Math.max(-4 + a(j), 0));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ReaderTocDialog
 * JD-Core Version:    0.6.2
 */