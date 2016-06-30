package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.view.CropView;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class CropPhotoActivity extends BaseActivity {
    private CropView a;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static /* synthetic */ void a(CropPhotoActivity cropPhotoActivity) {
        Bitmap bitmap = cropPhotoActivity.a.a();
        Bitmap bitmap2 = bitmap.getHeight() > 200 || bitmap.getWidth() > 200 ? Bitmap.createScaledBitmap(bitmap, 200, 200, false) : bitmap;
        File file = new File(((Uri) cropPhotoActivity.getIntent().getParcelableExtra("output")).getPath());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap2.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.close();
        } catch (IOException var5_5) {
            var5_5.printStackTrace();
        }
        cropPhotoActivity.setResult(-1, cropPhotoActivity.getIntent());
        cropPhotoActivity.finish();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    protected void onCreate(Bundle var1_1) {
        v4 = 0x800;
        v2 = 0x45000000#2048.0f;
        Lcom / ushaqi / zhuishushenqi / ui / BaseActivity.onCreate(p0, p1);
        v0 = 0x7f030035;
        p0.setContentView(v0);
        v0 = "\u622a\u53d6\u5934\u50cf";
        v1 = "\u4f7f\u7528";
        v3 = new aY();
        v3.<init> (p0);
        p0.a(v0, v1, v3);
        v0 = p0.getIntent();
        v1 = v0.getData();
        v0 = 0x0;
        v3 = p0.getContentResolver();
        v1 = v3.openInputStream(v1);
        v0 = Landroid / graphics / BitmapFactory.decodeStream(v1);
                 v1 = v0.getHeight();
        if (v1 < v4 && v0.getWidth() < v4) {
            v1 = v0;
        } else {
            v1 = v0.getWidth();
            int-to - float v1, v1
            v3 = v0.getHeight();
            int-to - float v3, v3
            cmpl - float v4, v1, v3
            if (v4 <= 0) {
                v1 /= v3;
                v1 *= v2;
                v5 = v2;
                v2 = v1;
                v1 = v5;
            } else {
                v1 = v3 / v1;
                v1 *= v2;
            }
            float-to - int v2, v2
            float-to - int v1, v1
            v3 = 0x0;
            v0 = Landroid / graphics / Bitmap.createScaledBitmap(v0, v2, v1, v3);
            v1 = v0;
        }
        v0 = 0x7f0c00fe;
        v0 = p0.findViewById(v0);
        check - cast v0, Lcom / ushaqi / zhuishushenqi / view / CropView;
        p0.Lcom / ushaqi / zhuishushenqi / ui / CropPhotoActivity;->a = v0;
        v0 = p0.Lcom / ushaqi / zhuishushenqi / ui / CropPhotoActivity;->a;
        v0.setImageBitmap(v1);
        return;
        :goto_3

        block11:
        {
            var2_2 = 2048.0f;
            super.onCreate(var1_1);
            this.setContentView(R.layout.activity_crop_photo);
            this.a("截取头像", "使用", new aa() {
                @Override
                public void a() {
                    CropPhotoActivity.a(CropPhotoActivity.this);
                }
            });
            var3_3 = this.getIntent().getData();
            try {
                var6_5 = var13_4 = BitmapFactory.decodeStream(this.getContentResolver().openInputStream(var3_3));
                break block11;
            } catch (OutOfMemoryError var4_10) {
            }
            **GOTO lbl -1000
        }
        lbl12:
        // 2 sources:
        do {
            if (var6_5.getHeight() >= 2048 || var6_5.getWidth() >= 2048) {
                var7_6 = var6_5.getWidth();
                if (var7_6 > (var8_7 = (float) var6_5.getHeight())) {
                    var11_8 = var2_2 * (var8_7 / var7_6);
                } else {
                    var9_14 = var2_2 * (var7_6 / var8_7);
                    var10_15 = var2_2;
                    var2_2 = var9_14;
                    var11_8 = var10_15;
                }
                var12_9 = Bitmap.createScaledBitmap(var6_5, (int) var2_2, (int) var11_8, false);
            } else {
                var12_9 = var6_5;
            }
            this.a = (CropView) this.findViewById(R.id.crop);
            this.a.setImageBitmap(var12_9);
            return;
            break;
        } while (true);
        lbl - 1000: // 2 sources:
        {
            do {
                var4_11.printStackTrace();
                var6_5 = null;
                **continue;
                break;
            } while (true);
        }
        catch(IOException var4_12){
            **continue;
        }
    }
}
