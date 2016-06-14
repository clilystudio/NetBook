package com.clilystudio.netbook.ui;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.text.format.Formatter;
import android.widget.TextView;

import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.koushikdutta.async.r;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class WifiActivity extends BaseActivity {
    private List<BookFile> a = new ArrayList<BookFile>();
    private com.koushikdutta.async.http.server.a b;
    private TextView c;
    private TextView e;

    static /* synthetic */ void a(WifiActivity wifiActivity, File file) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file, true);
            fileOutputStream.write(new byte[0]);
            fileOutputStream.close();
            return;
        } catch (FileNotFoundException var4_3) {
            var4_3.printStackTrace();
            return;
        } catch (IOException var3_4) {
            var3_4.printStackTrace();
            return;
        }
    }

    static /* synthetic */ void a(WifiActivity wifiActivity, File file, byte[] arrby) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file, true);
            fileOutputStream.write(arrby);
            fileOutputStream.close();
            return;
        } catch (FileNotFoundException var5_4) {
            var5_4.printStackTrace();
            return;
        } catch (IOException var4_5) {
            var4_5.printStackTrace();
            return;
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903144);
        this.b("Wi-Fi\u4f20\u4e66");
        this.b = new com.koushikdutta.async.http.server.a();
        this.c = (TextView) this.findViewById(2131493260);
        this.e = (TextView) this.findViewById(2131493261);
        this.a.clear();
        List<BookFile> list = a.f();
        this.a.addAll(list);
        for (BookFile bookFile : this.a) {
            this.b.a("/files/" + bookFile.getName(), new cm(this, bookFile));
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        this.b.a();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onResume() {
        super.onResume();
        String[] arrstring = new String[]{null};
        String[] arrstring2 = new String[]{"wifi_transfer_v1", "wifi_transfer_v1/scripts"};
        for (int j = 0; j < 2; ++j) {
            try {
                String string = arrstring2[j];
                for (String string2 : this.getAssets().list(string)) {
                    String string3 = string + "/" + string2;
                    boolean bl = "index.css".equals(string2);
                    String string4 = null;
                    if (bl) {
                        string4 = "text/css";
                    }
                    this.b.a("/" + string3, new cn(this, string3, string4));
                }
                continue;
            } catch (IOException var7_12) {
                var7_12.printStackTrace();
                break;
            }
        }
        this.b.a("/", new co(this));
        this.b.a("/files", new cp(this));
        this.b.b("/send_file_name", new cq(this, arrstring));
        this.b.b("/delete_file", new cr(this));
        this.b.b("/files", new cs(this, arrstring));
        this.b.a(5000);
        if (a.r(this) != 1) {
            this.c.setText("\u672a\u8fde\u63a5\u5230 Wi-Fi");
            this.e.setText("\u672a\u8fde\u63a5");
            return;
        } else {
            this.c.setText("http://" + Formatter.formatIpAddress(((WifiManager) this.getSystemService("wifi")).getConnectionInfo().getIpAddress()) + ":5000");
            WifiInfo wifiInfo = ((WifiManager) this.getSystemService("wifi")).getConnectionInfo();
            if (wifiInfo == null) return;
            {
                String string = wifiInfo.getSSID();
                if (string != null && string.length() >= 3 && string.contains("\"")) {
                    string = string.substring(1, -1 + string.length());
                }
                this.e.setText(string);
                return;
            }
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        i.a().c(new A());
    }
}
