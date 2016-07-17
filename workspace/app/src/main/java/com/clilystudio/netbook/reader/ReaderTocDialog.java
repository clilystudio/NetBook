package com.clilystudio.netbook.reader;

import android.annotation.TargetApi;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.BaseBookAdapter;
import com.clilystudio.netbook.model.ChapterLink;

import java.util.LinkedList;

public class ReaderTocDialog extends DialogFragment implements AdapterView.OnItemClickListener {
    private BaseBookAdapter<ChapterLink> a;
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
            return this.d.e().containsKey(string);
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
        this.i = ReaderStyle.a(this.getActivity()) ? R.style.BaseTheme : R.style.TocDialog;
        this.setStyle(DialogFragment.STYLE_NO_TITLE, this.i);
    }

    @TargetApi(value = 11)
    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.dialog_toc, viewGroup, false);
        this.c = (TextView) view.findViewById(R.id.dialog_toc_title);
        this.b = (ListView) view.findViewById(R.id.dialog_toc_list);
//        cf(this, LayoutInflater.from(new ContextThemeWrapper((Context) this.getActivity(), this.i)));
        this.a = new BaseBookAdapter<ChapterLink>(){

            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                ChapterLink chapterLink = this.getItem(position);
                View view2 = convertView == null ? LayoutInflater.from(new ContextThemeWrapper(ReaderTocDialog.this.getActivity(), i)).inflate(R.layout.list_item_toc, parent, false) : convertView;
                if (chapterLink == null) {
                    return view2;
                }
                ImageView imageView = (ImageView) view2.findViewById(R.id.iv_icon);
                TextView textView = (TextView) view2.findViewById(R.id.tv_title);
                int n2 = ReaderTocDialog.a(ReaderTocDialog.this, position);
                String text = "" + (n2 + 1) + ". " + chapterLink.getTitle();
                textView.setText(text);
                if (n2 == ReaderTocDialog.b(ReaderTocDialog.this).k()) {
                    imageView.setImageLevel(1);
                    textView.setTextColor(getAttrColor(R.attr.dialog_text_color_highlight));
                } else {
                    String string = chapterLink.getLink();
                    if (ReaderTocDialog.c(ReaderTocDialog.this) != null && ReaderTocDialog.c(ReaderTocDialog.this).contains(string)) {
                        imageView.setImageLevel(2);
                    } else {
                        imageView.setImageLevel(0);
                    }
                    textView.setTextColor(getAttrColor(R.attr.dialog_text_color));
                }
                if (!ReaderTocDialog.a(ReaderTocDialog.this, chapterLink)) {
                    view2.findViewById(R.id.iv_readable).setVisibility(View.VISIBLE);
                    return view2;
                }
                view2.findViewById(R.id.iv_readable).setVisibility(View.GONE);
                return view2;
            }
        };
        this.b.setOnItemClickListener(this);
        this.b.setAdapter(this.a);
        if (Build.VERSION.SDK_INT >= 19) {
            this.b.setFastScrollAlwaysVisible(true);
        }
        return view;
    }

    private int getAttrColor(int attr) {
        TypedArray typedArray = ReaderTocDialog.this.getActivity().obtainStyledAttributes(ReaderTocDialog.this.i, new int[]{attr});
        int color = typedArray.getColor(0, 0);
        typedArray.recycle();
        return color;
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
        BaseBookAdapter<ChapterLink> cf2 = this.a;
        ChapterLink[] arrobject = this.d.h();
        if (arrobject != null) {
            int n = arrobject.length;
            int n2 = 0;
            for (int j = -1 + Math.min(arrobject.length, n); j > n2; --j, ++n2) {
                ChapterLink object = arrobject[j];
                arrobject[j] = arrobject[n2];
                arrobject[n2] = object;
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
