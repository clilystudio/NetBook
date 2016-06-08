package com.clilystudio.netbook.reader.txt;

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
import com.squareup.a.b;

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

public class ScanTxtFileActivity extends BaseActivity {
    @InjectView(2131493181)
    TextView mEmpty;
    @InjectView(2131492924)
    ListView mList;
    @InjectView(2131493085)
    ProgressBar mPbLoading;
    @InjectView(2131493180)
    TextView mStatus;
    private R a;
    private List<T> b = new ArrayList();
    private int c;
    private List<BookFile> e = new ArrayList();
    private boolean f = true;

    private void a(File paramFile, Stack<File> paramStack) {
        if ((paramFile == null) || (!paramFile.isDirectory())) ;
        File[] arrayOfFile;
        do {
            return;
            arrayOfFile = paramFile.listFiles();
        }
        while (arrayOfFile == null);
        int i = arrayOfFile.length;
        int j = 0;
        label28:
        File localFile;
        if (j < i) {
            localFile = arrayOfFile[j];
            if (!localFile.getName().startsWith(".")) {
                if ((!localFile.isDirectory()) || (localFile.listFiles() == null))
                    break label83;
                paramStack.push(localFile);
            }
        }
        label83:
        label373:
        label377:
        label383:
        while (true) {
            j++;
            break label28;
            break;
            int k = localFile.getName().lastIndexOf(".");
            String str1 = localFile.getName();
            if (k == -1)
                k = 0;
            String str2 = str1.substring(k);
            int m;
            String str3;
            int i2;
            int n;
            if (((".txt".equals(str2)) || (".TXT".equals(str2))) && (localFile.length() > 300L)) {
                m = 1;
                if (m == 0)
                    break label373;
                str3 = localFile.getName();
                if (str3 != null)
                    break label298;
                i2 = 1;
                if (i2 != 0)
                    break label373;
                n = 1;
                if (n == 0)
                    break label377;
                Iterator localIterator = this.e.iterator();
                do
                    if (!localIterator.hasNext())
                        break;
                while (!((BookFile) localIterator.next()).getFilePath().equals(localFile.getPath()));
            }
            for (int i1 = 1; ; i1 = 0) {
                if (i1 != 0)
                    break label383;
                this.b.add(new T(this, localFile, 0));
                Collections.sort(this.b, new O(this));
                runOnUiThread(new P(this));
                break;
                m = 0;
                break label155;
                String str4 = str3.toLowerCase();
                if ((str4.contains("log")) || (str4.contains("debug")) || (str4.contains("jason")) || (str4.contains("sig")) || (Pattern.compile("^.*[0-9]+(-|/| )?[0-9]+(-|/| )?[0-9]+.*$").matcher(str3).matches())) {
                    i2 = 1;
                    break label175;
                }
                i2 = 0;
                break label175;
                n = 0;
                break label183;
                break;
            }
        }
    }

    public final void b() {
        File localFile = new File("/sdcard");
        Stack localStack = new Stack();
        localStack.push(localFile);
        while ((!localStack.isEmpty()) && (this.c != 1))
            a((File) localStack.pop(), localStack);
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903126);
        ButterKnife.inject(this);
        this.a = new R(this, getLayoutInflater());
        this.mList.setAdapter(this.a);
        this.mList.setOnItemClickListener(this.a);
        a("本地书籍", "全选", new N(this));
    }

    public void onImport(View paramView) {
        List localList = R.b(this.a);
        if (localList.size() == 0) {
            e.a(this, "请先选择导入的书籍");
            return;
        }
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
            ((BookFile) localIterator.next()).setUpdated(new Date());
        TxtFileObject.saveTxtFiles(localList);
        i.a().c(new A());
        finish();
    }

    public void onResume() {
        super.onResume();
        this.b = new ArrayList();
        new Q(this).b(new Void[0]);
    }

    protected void onStop() {
        super.onStop();
        this.c = 1;
    }
}

