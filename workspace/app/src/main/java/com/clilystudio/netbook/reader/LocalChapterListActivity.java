package com.clilystudio.netbook.reader;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocDownloadSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.W;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class LocalChapterListActivity extends BaseActivity {
    private TextView a;
    private ListView b;
    private com.clilystudio.netbook.util.W<TocDownloadSummary> c;
    private View e;
    private ProgressDialog f;
    private String g;
    private String h;

    public static Intent a(Context context, String string, String string2) {
        return new d().a(context, LocalChapterListActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a();
    }

    static /* synthetic */ ListView a(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.b;
    }

    static /* synthetic */ void a(LocalChapterListActivity localChapterListActivity, String string) {
        new uk.me.lewisdeane.ldialogs.h(localChapterListActivity).b(R.string.chapter_dl_del_chapter).a(false).a(R.string.delete, (DialogInterface.OnClickListener) ((Object) new k(localChapterListActivity, string))).b(R.string.cancel, (DialogInterface.OnClickListener) ((Object) new j(localChapterListActivity))).b();
    }

    static /* synthetic */ W<TocDownloadSummary> b(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.c;
    }

    static /* synthetic */ String c(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.g;
    }

    static /* synthetic */ String d(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.h;
    }

    static /* synthetic */ void e(LocalChapterListActivity localChapterListActivity) {
        localChapterListActivity.b();
    }

    static /* synthetic */ ProgressDialog f(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.f;
    }

    static /* synthetic */ View g(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.e;
    }

    static /* synthetic */ TextView h(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ ArrayList i(LocalChapterListActivity localChapterListActivity) {
        ArrayList<String> arrayList = a.D(localChapterListActivity.g);
        ArrayList<TocDownloadSummary> arrayList2 = new ArrayList<TocDownloadSummary>();
        Iterator<String> iterator = arrayList.iterator();
        while (iterator.hasNext()) {
            String string = iterator.next();
            if (string.contains("MIX_TOC_ID") || string.contains("_")) continue;
            Toc toc = (Toc) a.b(localChapterListActivity.g, string, "toc");
            String string2 = localChapterListActivity.g;
            String string3 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string;
            int n2 = a.b(new File(c.a, string3));
            if (toc != null) {
                --n2;
            }
            if (n2 <= 0) continue;
            TocDownloadSummary tocDownloadSummary = new TocDownloadSummary();
            tocDownloadSummary.setTocId(string);
            tocDownloadSummary.setCount(n2);
            if (toc != null) {
                tocDownloadSummary.setHostName(toc.getHost());
            } else {
                tocDownloadSummary.setHostName("\u672a\u77e5\u6765\u6e90");
            }
            arrayList2.add(tocDownloadSummary);
        }
        return arrayList2;
    }

    private void b() {
        l l2 = new l(this);
        this.f = ProgressDialog.show(this, null, "\u8f7d\u5165\u4e2d...", true, true);
        this.f.setCanceledOnTouchOutside(false);
        new m(this, (Handler) ((Object) l2)).start();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_local_chapter_list);
        this.c(R.string.resource_local_chapter);
        this.g = this.getIntent().getStringExtra("BOOK_ID");
        this.h = this.getIntent().getStringExtra("BOOK_TITLE");
        this.a = (TextView) this.findViewById(R.id.new_topic_empty_text);
        this.b = (ListView) this.findViewById(R.id.local_chapter_list);
        this.e = LayoutInflater.from(this).inflate(R.layout.resource_loacl_header, (ViewGroup) this.b, false);
        this.b.addHeaderView(this.e, null, false);
        this.e.setVisibility(View.GONE);
        this.c = new W<TocDownloadSummary>(getLayoutInflater(), R.layout.list_item_resource_download) {

            @Override
            protected void a(int var1, TocDownloadSummary tocDownloadSummary) {
                this.a(0, tocDownloadSummary.getHostName());
                this.a(1, "已预读" + tocDownloadSummary.getCount() + "章");
                if (-1 == var1) {
                    this.a(2, false);
                    return;
                }
                this.a(2, true);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.tv_name, R.id.tv_last_chapter, R.id.resource_list_item_last_select};
            }
        };
        this.b.setAdapter(this.c);
        this.b.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new h(this)));
        this.b.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                TocDownloadSummary tocDownloadSummary;
                int n2 = position - LocalChapterListActivity.a(LocalChapterListActivity.this).getHeaderViewsCount();
                if (n2 >= 0 && (tocDownloadSummary = LocalChapterListActivity.b(LocalChapterListActivity.this).getItem(n2)) != null) {
                    LocalChapterListActivity.a(LocalChapterListActivity.this, tocDownloadSummary.getTocId());
                }
                return true;
            }
        });
        if (!a.d()) {
            this.a.setVisibility(View.VISIBLE);
            this.a.setText("无法获取预读章节，请检查SD卡");
            return;
        }
        this.b();
    }
}
