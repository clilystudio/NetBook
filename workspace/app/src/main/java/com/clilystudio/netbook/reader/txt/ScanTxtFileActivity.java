package com.clilystudio.netbook.reader.txt;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.regex.Pattern;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ScanTxtFileActivity
        extends BaseActivity {
    @InjectView(value = 2131493181)
    TextView mEmpty;
    @InjectView(value = 2131492924)
    ListView mList;
    @InjectView(value = 2131493085)
    ProgressBar mPbLoading;
    @InjectView(value = 2131493180)
    TextView mStatus;
    private R a;
    private List<T> b = new ArrayList<T>();
    private int c;
    private List<BookFile> e = new ArrayList<BookFile>();
    private boolean f = true;

    static /* synthetic */ R a(ScanTxtFileActivity scanTxtFileActivity) {
        return scanTxtFileActivity.a;
    }

    static /* synthetic */ List a(ScanTxtFileActivity scanTxtFileActivity, List list) {
        scanTxtFileActivity.e = list;
        return list;
    }

    static /* synthetic */ void a(ScanTxtFileActivity scanTxtFileActivity, int n) {
        scanTxtFileActivity.mStatus.setText("\u626b\u63cf\u5230" + n + "\u4e2atxt\u6587\u4ef6");
    }

    static /* synthetic */ boolean a(ScanTxtFileActivity scanTxtFileActivity, boolean bl) {
        scanTxtFileActivity.f = bl;
        return bl;
    }

    static /* synthetic */ int b(ScanTxtFileActivity scanTxtFileActivity, int n) {
        scanTxtFileActivity.c = 0;
        return 0;
    }

    static /* synthetic */ List b(ScanTxtFileActivity scanTxtFileActivity) {
        return scanTxtFileActivity.b;
    }

    static /* synthetic */ boolean c(ScanTxtFileActivity scanTxtFileActivity) {
        return scanTxtFileActivity.f;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(File file, Stack<File> stack) {
        File[] arrfile;
        if (file == null || !file.isDirectory() || (arrfile = file.listFiles()) == null) {
            return;
        }
        int n = arrfile.length;
        int n2 = 0;
        while (n2 < n) {
            File file2 = arrfile[n2];
            if (!file2.getName().startsWith(".")) {
                if (file2.isDirectory() && file2.listFiles() != null) {
                    stack.push(file2);
                } else {
                    String string;
                    boolean bl;
                    String string2;
                    String string3;
                    boolean bl2;
                    boolean bl3;
                    int n3 = file2.getName().lastIndexOf(".");
                    String string4 = file2.getName();
                    if (n3 == -1) {
                        n3 = 0;
                    }
                    if (bl2 = (bl3 = (".txt".equals(string2 = string4.substring(n3)) || ".TXT".equals(string2)) && file2.length() > 300) && !(bl = (string = file2.getName()) == null ? true : (string3 = string.toLowerCase()).contains("log") || string3.contains("debug") || string3.contains("jason") || string3.contains("sig") || Pattern.compile("^.*[0-9]+(-|/| )?[0-9]+(-|/| )?[0-9]+.*$").matcher(string).matches())) {
                        boolean bl4;
                        block9:
                        {
                            Iterator<BookFile> iterator = this.e.iterator();
                            while (iterator.hasNext()) {
                                if (!iterator.next().getFilePath().equals(file2.getPath())) continue;
                                bl4 = true;
                                break block9;
                            }
                            bl4 = false;
                        }
                        if (!bl4) {
                            this.b.add(new T(this, file2, 0));
                            Collections.sort(this.b, new O(this));
                            this.runOnUiThread(new P(this));
                        }
                    }
                }
            }
            ++n2;
        }
    }

    public final void b() {
        File file = new File("/sdcard");
        Stack<File> stack = new Stack<File>();
        stack.push(file);
        while (!stack.isEmpty() && this.c != 1) {
            this.a((File) stack.pop(), stack);
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903126);
        ButterKnife.inject(this);
        this.a = new R(this, this.getLayoutInflater());
        this.mList.setAdapter(this.a);
        this.mList.setOnItemClickListener(this.a);
        this.a("\u672c\u5730\u4e66\u7c4d", "\u5168\u9009", (aa) new N(this));
    }

    public void onImport(View view) {
        List list = R.b(this.a);
        if (list.size() == 0) {
            e.a((Activity) this, (String) "\u8bf7\u5148\u9009\u62e9\u5bfc\u5165\u7684\u4e66\u7c4d");
            return;
        }
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            ((BookFile) iterator.next()).setUpdated(new Date());
        }
        TxtFileObject.saveTxtFiles(list);
        i.a().c(new A());
        this.finish();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.b = new ArrayList<T>();
        new Q(this).b(new Void[0]);
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.c = 1;
    }
}
