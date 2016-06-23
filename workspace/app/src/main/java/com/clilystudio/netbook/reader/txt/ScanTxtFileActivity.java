package com.clilystudio.netbook.reader.txt;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.util.W;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.regex.Pattern;

public class ScanTxtFileActivity extends BaseActivity {
    TextView mEmpty;
    ListView mList;
    ProgressBar mPbLoading;
    TextView mStatus;
    private W<T_Clazz> a;
    private List<T_Clazz> b = new ArrayList<>();
    private int c;
    private List<BookFile> e = new ArrayList<>();
    private boolean f = true;

    static /* synthetic */ W<T_Clazz> a(ScanTxtFileActivity scanTxtFileActivity) {
        return scanTxtFileActivity.a;
    }

    static /* synthetic */ List a(ScanTxtFileActivity scanTxtFileActivity, List list) {
        scanTxtFileActivity.e = list;
        return list;
    }

    static /* synthetic */ void a(ScanTxtFileActivity scanTxtFileActivity, int n) {
        String text = "扫描到" + n + "个txt文件";
        scanTxtFileActivity.mStatus.setText(text);
    }

    static /* synthetic */ boolean a(ScanTxtFileActivity scanTxtFileActivity, boolean bl) {
        scanTxtFileActivity.f = bl;
        return bl;
    }

    static /* synthetic */ int b(ScanTxtFileActivity scanTxtFileActivity, int n) {
        scanTxtFileActivity.c = n;
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
                    String string2;
                    String string3;
                    int n3 = file2.getName().lastIndexOf(".");
                    String string4 = file2.getName();
                    if (n3 == -1) {
                        n3 = 0;
                    }
                    if (((".txt".equals(string2 = string4.substring(n3)) || ".TXT".equals(string2)) && file2.length() > 300) && !((string = file2.getName()) == null ? true : (string3 = string.toLowerCase()).contains("log") || string3.contains("debug") || string3.contains("jason") || string3.contains("sig") || Pattern.compile("^.*[0-9]+(-|/| )?[0-9]+(-|/| )?[0-9]+.*$").matcher(string).matches())) {
                        boolean bl4;
                        block9:
                        {
                            for (BookFile anE : this.e) {
                                if (!anE.getFilePath().equals(file2.getPath())) continue;
                                bl4 = true;
                                break block9;
                            }
                            bl4 = false;
                        }
                        if (!bl4) {
                            this.b.add(new T_Clazz(file2));
                            Collections.sort(this.b, new Comparator<T_Clazz>() {
                                @Override
                                public int compare(T_Clazz lhs, T_Clazz rhs) {
                                    return (int) (rhs.d() - lhs.d());
                                }
                            });
                            this.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    ScanTxtFileActivity.a(ScanTxtFileActivity.this).a(ScanTxtFileActivity.b(ScanTxtFileActivity.this));
                                    ScanTxtFileActivity.a(ScanTxtFileActivity.this, ScanTxtFileActivity.b(ScanTxtFileActivity.this).size());
                                }
                            });
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
        this.setContentView(R.layout.activity_scan_txt_file);
        this.mStatus = (TextView) findViewById(R.id.hot_flag);
        this.mList = (ListView) findViewById(R.id.list);
        this.mPbLoading = (ProgressBar) findViewById(R.id.pb_loading);
        this.mEmpty = (TextView) findViewById(R.id.empty);
        this.a = new W<T_Clazz>(this.getLayoutInflater(), R.layout.list_item_book_file){

            @Override
            protected void a(int var1, final T_Clazz t) {
                BookFile bookFile = t.a();
                boolean bl = t.b();
                this.a(0, bookFile.getName());
                final ImageView imageView = this.a(1, ImageView.class);
                R_Clazz_a(imageView, bl);
                imageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        c();
                        R_Clazz_a(imageView, t.b());
                    }
                });
                this.a(2, bookFile.getSize());
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.title, R.id.checkbox, R.id.size};
            }
        };
        this.mList.setAdapter(this.a);
        this.mList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                ((T_Clazz)ScanTxtFileActivity.this.a.getItem(position)).c();
                 ScanTxtFileActivity.a(ScanTxtFileActivity.this).notifyDataSetChanged();
            }
        });
        this.a("本地书籍", "全选", new aa() {
            @Override
            public void a() {
                Iterator iterator = ScanTxtFileActivity.this.a.c().iterator();
                while (iterator.hasNext()) {
                    ((T_Clazz) iterator.next()).a(ScanTxtFileActivity.c(ScanTxtFileActivity.this));
                }
                 boolean bl = !ScanTxtFileActivity.c(ScanTxtFileActivity.this);
                ScanTxtFileActivity.a(ScanTxtFileActivity.this, bl);
                TextView textView = (TextView) ScanTxtFileActivity.this.getActionBar().getCustomView().findViewById(R.id.actionbar_custom_right_text);
                String string = ScanTxtFileActivity.c(ScanTxtFileActivity.this) ? "全选" : "全不选";
                textView.setText(string);
                ScanTxtFileActivity.this.a.notifyDataSetChanged();
            }
        });
    }

    private void R_Clazz_a(ImageView imageView, boolean bl) {
        if (bl) {
            imageView.setImageResource(R.drawable.green_tick_circle);
            imageView.setContentDescription("选中");
        } else {
            imageView.setImageResource(R.drawable.gray_tick_circle);
            imageView.setContentDescription("未选中");
        }
    }

    public void onImport(View view) {

        List<BookFile> list = new ArrayList();
        for (T_Clazz t : ScanTxtFileActivity.this.a.c()) {
            if (!t.b()) continue;
            list.add(t.a());
        }
        if (list.size() == 0) {
            com.clilystudio.netbook.util.e.a(this, "请先选择导入的书籍");
            return;
        }
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            ((BookFile) iterator.next()).setUpdated(new Date());
        }
        TxtFileObject.saveTxtFiles(list);
        i.a().post(new A());
        this.finish();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.b = new ArrayList<T_Clazz>();
        new com.clilystudio.netbook.a_pack.e<Void, Void, Void>(){

            @Override
            protected Void doInBackground(Void... params) {
                ScanTxtFileActivity.b(ScanTxtFileActivity.this, 0);
                ScanTxtFileActivity.a(ScanTxtFileActivity.this, TxtFileObject.getTxtFiles());
                ScanTxtFileActivity.this.b();
                return null;
            }

            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                ScanTxtFileActivity.this.mPbLoading.setVisibility(View.VISIBLE);
            }

            @Override
            protected void onPostExecute(Void aVoid) {
                super.onPostExecute(aVoid);
                ScanTxtFileActivity.this.mPbLoading.setVisibility(View.GONE);
                if (ScanTxtFileActivity.b(ScanTxtFileActivity.this).size() == 0) {
                    ScanTxtFileActivity.this.mEmpty.setVisibility(View.VISIBLE);
                    ScanTxtFileActivity.this.mList.setVisibility(View.GONE);
                    ScanTxtFileActivity.a(ScanTxtFileActivity.this, 0);
                }
                i.a().post(new A());
            }
        }.b();
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.c = 1;
    }
}
