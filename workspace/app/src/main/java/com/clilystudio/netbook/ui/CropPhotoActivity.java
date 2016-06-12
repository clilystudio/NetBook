
package com.clilystudio.netbook.ui;

import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap$CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import com.clilystudio.netbook.view.CropView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class CropPhotoActivity extends BaseActivity {

    private CropView a;

    static void a(CropPhotoActivity CropPhotoActivity1)
    {
        Bitmap Bitmap2 = CropPhotoActivity1.a.a();
        Bitmap Bitmap3;
        File File4;

        if( Bitmap2.getHeight() > 200 || Bitmap2.getWidth() > 200 )
            Bitmap3 = Bitmap.createScaledBitmap( Bitmap2, 200, 200, false );
        else
            Bitmap3 = Bitmap2;
        File4 = new File( ((Uri) CropPhotoActivity1.getIntent().getParcelableExtra( "output" )).getPath() );
        try
        {
            Object Object5 = new FileOutputStream( File4 );

            Bitmap3.compress( Bitmap$CompressFormat.PNG, 100, (OutputStream) Object5 );
            ((FileOutputStream) Object5).close();
        }
        catch( IOException IOException6 )
        {
            IOException6.printStackTrace();
        }
        CropPhotoActivity1.setResult( -1, CropPhotoActivity1.getIntent() );
        CropPhotoActivity1.finish();
    }

    protected void onCreate(Bundle Bundle1)
    {
        float float2 = 2048.0F;
        Uri Uri3;
        Bitmap Bitmap6;
        Bitmap Bitmap12;

        super.onCreate( Bundle1 );
        setContentView( 2130903093 );
        a( "\u622A\u53D6\u5934\u50CF", "\u4F7F\u7528", (aa) new aY( this ) );
        Uri3 = getIntent().getData();
        try
        {
            Bitmap Bitmap13 = BitmapFactory.decodeStream( getContentResolver().openInputStream( Uri3 ) );
        }
        catch( IOException IOException4 )
        {
            try
            {
                ((Throwable) IOException4).printStackTrace();
            }
            finally
            {
                throw Object5;
            }
            Bitmap6 = null;
        }
        catch( OutOfMemoryError OutOfMemoryError14 )
        {
            ((Throwable) OutOfMemoryError14).printStackTrace();
            Bitmap6 = null;
        }
        finally
        {
            throw Object5;
        }
        if( Bitmap6.getHeight() >= 2048 || Bitmap6.getWidth() >= 2048 )
        {
            float float7 = (float) Bitmap6.getWidth();
            float float8 = (float) Bitmap6.getHeight();
            float float11;

            if( float7 > float8 )
                float11 = float2 * (float8 / float7);
            else
            {
                float float9 = float2 * (float7 / float8);
                float float10 = float2;

                float2 = float9;
                float11 = float10;
            }
            Bitmap12 = Bitmap.createScaledBitmap( Bitmap6, (int) float2, (int) float11, false );
        }
        else
            Bitmap12 = Bitmap6;
        a = (CropView) findViewById( 2131493118 );
        a.setImageBitmap( Bitmap12 );
    }
}
