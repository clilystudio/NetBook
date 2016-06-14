package com.clilystudio.netbook.reader;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.model.ChapterLink;

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

    static /* synthetic */ int a(ReaderTocDialog readerTocDialog) {
        return readerTocDialog.i;
    }

    static /* synthetic */ int a(ReaderTocDialog readerTocDialog, int n) {
        return readerTocDialog.a(n);
    }

    public static ReaderTocDialog a() {
        return new ReaderTocDialog();
    }

    static /* synthetic */ boolean a(ReaderTocDialog readerTocDialog, ChapterLink chapterLink) {
        return readerTocDialog.a(chapterLink);
    }

    static /* synthetic */ Reader b(ReaderTocDialog readerTocDialog) {
        return readerTocDialog.d;
    }

    static /* synthetic */ LinkedList c(ReaderTocDialog readerTocDialog) {
        return readerTocDialog.h;
    }

    private int a(int n) {
        return -1 + this.d.f() - n;
    }

    private boolean a(ChapterLink chapterLink) {
        if (!chapterLink.isVip()) {
            return true;
        }
        try {
            String string = chapterLink.getLink().substring(1 + chapterLink.getLink().lastIndexOf("/"));
            boolean bl = this.d.e().containsKey(string);
            return bl;
        } catch (Exception var2_4) {
            return true;
        }
    }

    public final void a(DialogInterface.OnCancelListener onCancelListener) {
        this.f = onCancelListener;
    }

    public final void a(DialogInterface.OnClickListener onClickListener) {
        this.e = onClickListener;
    }

    public final void a(DialogInterface.OnDismissListener onDismissListener) {
        this.g = onDismissListener;
    }

    public final void a(Reader reader) {
        this.d = reader;
    }

    public final void a(Reader reader, LinkedList<String> linkedList) {
        this.d = reader;
        this.h = linkedList;
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        if (this.f != null) {
            this.f.onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.i = bZ.a(this.getActivity()) ? 2131165538 : 2131165537;
        this.setStyle(1, this.i);
    }

    @TargetApi(value = 11)
    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(2130903200, viewGroup, false);
        this.c = (TextView) view.findViewById(2131493419);
        this.b = (ListView) view.findViewById(2131493421);
        this.a = new cf(this, LayoutInflater.from(new ContextThemeWrapper((Context) this.getActivity(), this.i)));
        this.b.setOnItemClickListener(this);
        this.b.setAdapter((ListAdapter) ((Object) this.a));
        if (a.i()) {
            this.b.setFastScrollAlwaysVisible(true);
        }
        return view;
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.g != null) {
            this.g.onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        if (this.e != null) {
            this.e.onClick(this.getDialog(), this.a(n));
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        cf cf2 = this.a;
        Object[] arrobject = this.d.h();
        if (arrobject != null) {
            int n = arrobject.length;
            if (arrobject != null) {
                int n2 = 0;
                for (int j = -1 + Math.min((int) arrobject.length, (int) n); j > n2; --j, ++n2) {
                    Object object = arrobject[j];
                    arrobject[j] = arrobject[n2];
                    arrobject[n2] = object;
                }
            }
        }
        cf2.a(arrobject);
    }

    @Override
    public void onStart() {
        super.onStart();
        if (this.d == null) {
            this.dismissAllowingStateLoss();
            return;
        }
        this.c.setText(this.d.j());
        int n = this.d.k();
        if (n == -1) {
            this.b.setSelection(0);
            return;
        }
        this.b.setSelection(Math.max(-4 + this.a(n), 0));
    }
}
