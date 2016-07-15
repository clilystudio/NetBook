package com.clilystudio.netbook.reader;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocDownloadSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.BaseDownloadAdapter;

import java.io.File;
import java.util.ArrayList;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class LocalChapterListActivity extends BaseActivity {
    private TextView a;
    private ListView b;
    private BaseDownloadAdapter<TocDownloadSummary> c;
    private View e;
    private ProgressDialog f;
    private String g;
    private String h;

    public static Intent a(Context context, String string, String string2) {
        return new IntentBuilder().put(context, LocalChapterListActivity.class).put("BOOK_ID", string).put("BOOK_TITLE", string2).build();
    }

    static /* synthetic */ ListView a(LocalChapterListActivity localChapterListActivity) {
        return localChapterListActivity.b;
    }

    static /* synthetic */ void a(final LocalChapterListActivity localChapterListActivity, final String string) {
        new BaseDialog.Builder(localChapterListActivity).setMessage(R.string.chapter_dl_del_chapter).setCancelable(false).setPositiveButton(R.string.delete, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                String string2 = LocalChapterListActivity.c(localChapterListActivity);
                com.clilystudio.netbook.util.a.deleteDir(CachePathConst.Chapter + File.separator + string2 + File.separator + string);
                LocalChapterListActivity.e(localChapterListActivity);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        }).show();
    }

    static /* synthetic */ BaseDownloadAdapter<TocDownloadSummary> b(LocalChapterListActivity localChapterListActivity) {
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
        ArrayList<String> arrayList = com.clilystudio.netbook.util.a.D(localChapterListActivity.g);
        ArrayList<TocDownloadSummary> arrayList2 = new ArrayList<>();
        for (String string : arrayList) {
            if (string.contains("MIX_TOC_ID") || string.contains("_")) continue;
            Toc toc = (Toc) com.clilystudio.netbook.util.a.b(localChapterListActivity.g, string, "toc");
            String string2 = localChapterListActivity.g;
            String string3 = "/ZhuiShuShenQi/Chapter" + File.separator + string2 + File.separator + string;
            int n2 = com.clilystudio.netbook.util.a.b(new File(CachePathConst.RootPath, string3));
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
        this.f = ProgressDialog.show(this, null, "载入中...", true, true);
        this.f.setCanceledOnTouchOutside(false);
        final Handler handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                if (LocalChapterListActivity.f(LocalChapterListActivity.this) != null) {
                    LocalChapterListActivity.f(LocalChapterListActivity.this).dismiss();
                }
                if (msg.what == 1 && msg.obj != null) {
                    ArrayList arrayList = (ArrayList) msg.obj;
                    if (arrayList.size() == 0) {
                        LocalChapterListActivity.g(LocalChapterListActivity.this).setVisibility(View.GONE);
                        LocalChapterListActivity.h(LocalChapterListActivity.this).setVisibility(View.VISIBLE);
                        LocalChapterListActivity.h(LocalChapterListActivity.this).setText("\u65e0\u9884\u8bfb\u7ae0\u8282");
                    } else {
                        LocalChapterListActivity.g(LocalChapterListActivity.this).setVisibility(View.VISIBLE);
                        LocalChapterListActivity.h(LocalChapterListActivity.this).setVisibility(View.GONE);
                    }
                    LocalChapterListActivity.b(LocalChapterListActivity.this).a(arrayList);
                }
            }
        };
        new Thread() {

            @Override
            public void run() {
                Message message = new Message();
                ArrayList arrayList = LocalChapterListActivity.i(LocalChapterListActivity.this);
                message.what = 1;
                message.obj = arrayList;
                handler.sendMessage(message);
            }
        }.start();
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
        this.e = LayoutInflater.from(this).inflate(R.layout.resource_loacl_header, this.b, false);
        this.b.addHeaderView(this.e, null, false);
        this.e.setVisibility(View.GONE);
        this.c = new BaseDownloadAdapter<TocDownloadSummary>(getLayoutInflater(), R.layout.list_item_resource_download) {

            @Override
            protected void a(int var1, TocDownloadSummary tocDownloadSummary) {
                this.setText(0, tocDownloadSummary.getHostName());
                this.setText(1, "已预读" + tocDownloadSummary.getCount() + "章");
                if (-1 == var1) {
                    this.setVisibility(2, false);
                    return;
                }
                this.setVisibility(2, true);
            }

            @Override
            protected int[] getViewIds() {
                return new int[]{R.id.tv_name, R.id.tv_last_chapter, R.id.resource_list_item_last_select};
            }
        };
        this.b.setAdapter(this.c);
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                int n3 = position - LocalChapterListActivity.a(LocalChapterListActivity.this).getHeaderViewsCount();
                if (n3 >= 0) {
                    TocDownloadSummary tocDownloadSummary = LocalChapterListActivity.b(LocalChapterListActivity.this).getItem(n3);
                    Intent intent = ReaderActivity.a(LocalChapterListActivity.this, LocalChapterListActivity.c(LocalChapterListActivity.this), LocalChapterListActivity.d(LocalChapterListActivity.this), tocDownloadSummary.getTocId(), (String)null, true);
                    LocalChapterListActivity.this.startActivity(intent);
                }
            }
        });
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
        if (!com.clilystudio.netbook.util.a.isMounted()) {
            this.a.setVisibility(View.VISIBLE);
            String text = "无法获取预读章节，请检查SD卡";
            this.a.setText(text);
            return;
        }
        this.b();
    }
}
