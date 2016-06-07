package com.maxthon.main;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.maxthon.dex.DexUtils;
import com.maxthon.utils.AES;
import com.maxthon.utils.Base64;
import com.maxthon.utils.MDUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONObject;

public class SelfUpgradeTask extends AsyncTask<Void, Integer, Boolean>
{
  private static final String AES_KEY = "fbe5ac145999f320b3cf17fc471a3484";
  public static final String DEFAULT_JVERSION = "1.0.0";
  private static String KEY_DATA;
  private static String KEY_DOWNLOAD_URL;
  private static String KEY_MD5;
  private static String KEY_SHA;
  private static String KEY_SIZE;
  private static String S_VERSION = "1.0.0";
  private static final String URL = "http://wge.maxthon.cn/web_game_engine/self_update.php?sv=%s&jv=%s&dp=%s";
  private UICallback mCallback;
  private String mJverion;

  static
  {
    KEY_DATA = "data";
    KEY_MD5 = "md5";
    KEY_SHA = "sha";
    KEY_DOWNLOAD_URL = "download_url";
    KEY_SIZE = "size";
  }

  public SelfUpgradeTask(UICallback paramUICallback)
  {
    this.mCallback = paramUICallback;
    this.mJverion = MgeProperties.getMgeSharedPreferences(this.mCallback.getContext()).getString(MgeProperties.KEY_SDK_JVERSION, "1.0.0");
    DexUtils.getInstance().init(this.mCallback.getContext());
  }

  private String entityToString(HttpEntity paramHttpEntity, String paramString)
  {
    if (paramHttpEntity == null)
      throw new IllegalArgumentException("HTTP entity may not be null");
    InputStream localInputStream = paramHttpEntity.getContent();
    if (localInputStream == null)
      return "";
    if (paramHttpEntity.getContentLength() > 2147483647L)
      throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
    int i = (int)paramHttpEntity.getContentLength();
    if (i < 0)
      i = 4096;
    String str = getContentCharSet(paramHttpEntity);
    if (str == null)
      str = paramString;
    if (str == null)
      str = "ISO-8859-1";
    InputStreamReader localInputStreamReader = new InputStreamReader(localInputStream, str);
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(i);
    try
    {
      char[] arrayOfChar = new char[1024];
      while (true)
      {
        int j = localInputStreamReader.read(arrayOfChar);
        if (j == -1)
          return localCharArrayBuffer.toString();
        localCharArrayBuffer.append(arrayOfChar, 0, j);
      }
    }
    finally
    {
      localInputStreamReader.close();
    }
    throw localObject;
  }

  private String getContentCharSet(HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity == null)
      throw new IllegalArgumentException("HTTP entity may not be null");
    Header localHeader = paramHttpEntity.getContentType();
    String str = null;
    if (localHeader != null)
    {
      HeaderElement[] arrayOfHeaderElement = paramHttpEntity.getContentType().getElements();
      int i = arrayOfHeaderElement.length;
      str = null;
      if (i > 0)
      {
        NameValuePair localNameValuePair = arrayOfHeaderElement[0].getParameterByName("charset");
        str = null;
        if (localNameValuePair != null)
          str = localNameValuePair.getValue();
      }
    }
    return str;
  }

  private String getUpgradeUrl(String paramString1, String paramString2)
  {
    return String.format("http://wge.maxthon.cn/web_game_engine/self_update.php?sv=%s&jv=%s&dp=%s", new Object[] { paramString1, paramString2, "y" });
  }

  private String getUpgradeUrl(String paramString1, String paramString2, String paramString3)
  {
    return String.format("http://wge.maxthon.cn/web_game_engine/self_update.php?sv=%s&jv=%s&dp=%s", new Object[] { paramString1, paramString2, paramString3 });
  }

  private void retry()
  {
    this.mCallback.onFailure(0);
  }

  private void saveJversion(Context paramContext, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      SharedPreferences.Editor localEditor = MgeProperties.getMgeSharedPreferences(paramContext).edit();
      localEditor.putString(MgeProperties.KEY_SDK_JVERSION, paramString);
      localEditor.commit();
      this.mJverion = paramString;
      DexUtils.getInstance().setJversion(paramString);
    }
  }

  protected Boolean doInBackground(Void[] paramArrayOfVoid)
  {
    Log.i("test_upgrade", "doInBackground");
    AndroidHttpClient localAndroidHttpClient = null;
    try
    {
      localAndroidHttpClient = AndroidHttpClient.newInstance("wge");
      boolean bool = this.mCallback.isRequestDependence();
      String str1 = S_VERSION;
      String str2 = this.mJverion;
      String str3;
      HttpEntity localHttpEntity;
      if (bool)
      {
        str3 = "y";
        HttpPost localHttpPost = new HttpPost(getUpgradeUrl(str1, str2, str3));
        HttpConnectionParams.setConnectionTimeout(localHttpPost.getParams(), 30000);
        HttpConnectionParams.setSoTimeout(localHttpPost.getParams(), 50000);
        HttpResponse localHttpResponse = localAndroidHttpClient.execute(localHttpPost);
        localHttpEntity = localHttpResponse.getEntity();
        int i = localHttpResponse.getStatusLine().getStatusCode();
        Log.i("test_upgrade", "statusCode = " + i);
        if ((i >= 200) && (i < 300))
          break label187;
        Boolean localBoolean2 = Boolean.valueOf(false);
        localObject2 = localBoolean2;
      }
      while (true)
      {
        return localObject2;
        str3 = "n";
        break;
        label187: Integer[] arrayOfInteger1 = new Integer[1];
        arrayOfInteger1[0] = Integer.valueOf(5);
        publishProgress(arrayOfInteger1);
        String str4 = entityToString(localHttpEntity, "UTF-8");
        Log.i("test_upgrade", "json : " + str4);
        Object localObject3 = new JSONObject(str4).get(KEY_DATA);
        if ((localObject3 instanceof String))
        {
          Integer[] arrayOfInteger2 = new Integer[1];
          arrayOfInteger2[0] = Integer.valueOf(6);
          publishProgress(arrayOfInteger2);
          String str5 = (String)localObject3;
          if (!TextUtils.isEmpty(str5))
          {
            Integer[] arrayOfInteger3 = new Integer[1];
            arrayOfInteger3[0] = Integer.valueOf(7);
            publishProgress(arrayOfInteger3);
            String str6 = new String(Base64.decode(str5), Charset.forName("UTF-8"));
            if (!TextUtils.isEmpty(str6))
            {
              Integer[] arrayOfInteger4 = new Integer[1];
              arrayOfInteger4[0] = Integer.valueOf(8);
              publishProgress(arrayOfInteger4);
              String str7 = AES.AES_Decrypt("fbe5ac145999f320b3cf17fc471a3484", str6);
              Log.i("test_upgrade", "url : " + str7);
              if (!TextUtils.isEmpty(str7))
              {
                Integer[] arrayOfInteger5 = new Integer[1];
                arrayOfInteger5[0] = Integer.valueOf(9);
                publishProgress(arrayOfInteger5);
                try
                {
                  JSONObject localJSONObject = new JSONObject(str7);
                  Object localObject4 = localJSONObject.get(KEY_DOWNLOAD_URL);
                  if ((localObject4 instanceof String))
                  {
                    Integer[] arrayOfInteger6 = new Integer[1];
                    arrayOfInteger6[0] = Integer.valueOf(10);
                    publishProgress(arrayOfInteger6);
                    String str8 = (String)String.class.cast(localObject4);
                    if (!TextUtils.isEmpty(str8))
                    {
                      Integer[] arrayOfInteger7 = new Integer[1];
                      arrayOfInteger7[0] = Integer.valueOf(11);
                      publishProgress(arrayOfInteger7);
                      String str9 = URLDecoder.decode(str8, "UTF-8");
                      Log.i("test_upgrade", "utf8Url : " + str9);
                      String str10 = str9.substring(1 + str9.lastIndexOf("/"), str9.length());
                      Log.i("test_upgrade", "jv = " + str10);
                      InputStream localInputStream = new URL(str9).openConnection().getInputStream();
                      long l1 = localJSONObject.getLong(KEY_SIZE);
                      long l2 = 0L;
                      byte[] arrayOfByte = new byte[1024];
                      File localFile = DexUtils.getInstance().getJarFile("plugin_main", str10);
                      if (localFile.exists())
                        localFile.delete();
                      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
                      while (true)
                      {
                        int j = localInputStream.read(arrayOfByte);
                        if (j == -1)
                        {
                          localFileOutputStream.close();
                          localInputStream.close();
                          Integer[] arrayOfInteger8 = new Integer[1];
                          arrayOfInteger8[0] = Integer.valueOf(91);
                          publishProgress(arrayOfInteger8);
                          if (!localFile.exists())
                            break label1087;
                          long l3 = localFile.length();
                          Integer[] arrayOfInteger9 = new Integer[1];
                          arrayOfInteger9[0] = Integer.valueOf(92);
                          publishProgress(arrayOfInteger9);
                          if (l3 != localJSONObject.getLong(KEY_SIZE))
                            break label1087;
                          String str11 = MDUtils.md5File(localFile.getAbsolutePath());
                          Integer[] arrayOfInteger10 = new Integer[1];
                          arrayOfInteger10[0] = Integer.valueOf(93);
                          publishProgress(arrayOfInteger10);
                          if ((TextUtils.isEmpty(str11)) || (!str11.equals(localJSONObject.getString(KEY_MD5))))
                            break label1087;
                          String str12 = MDUtils.shaFile(localFile.getAbsolutePath());
                          Integer[] arrayOfInteger11 = new Integer[1];
                          arrayOfInteger11[0] = Integer.valueOf(94);
                          publishProgress(arrayOfInteger11);
                          if ((TextUtils.isEmpty(str12)) || (!str12.equals(localJSONObject.getString(KEY_SHA))))
                            break label1087;
                          Integer[] arrayOfInteger12 = new Integer[1];
                          arrayOfInteger12[0] = Integer.valueOf(95);
                          publishProgress(arrayOfInteger12);
                          Integer[] arrayOfInteger13 = new Integer[1];
                          arrayOfInteger13[0] = Integer.valueOf(96);
                          publishProgress(arrayOfInteger13);
                          DexUtils.getInstance().unZipJar(localFile);
                          Integer[] arrayOfInteger14 = new Integer[1];
                          arrayOfInteger14[0] = Integer.valueOf(99);
                          publishProgress(arrayOfInteger14);
                          if (this.mCallback.getContext() != null)
                          {
                            saveJversion(this.mCallback.getContext(), str10);
                            Integer[] arrayOfInteger15 = new Integer[1];
                            arrayOfInteger15[0] = Integer.valueOf(100);
                            publishProgress(arrayOfInteger15);
                          }
                          Boolean localBoolean3 = Boolean.valueOf(true);
                          localObject2 = localBoolean3;
                          if (localAndroidHttpClient == null)
                            break;
                          localAndroidHttpClient.close();
                          return localObject2;
                        }
                        localFileOutputStream.write(arrayOfByte, 0, j);
                        l2 += j;
                        Integer[] arrayOfInteger16 = new Integer[1];
                        arrayOfInteger16[0] = Integer.valueOf(10 + (int)(80L * l2 / l1));
                        publishProgress(arrayOfInteger16);
                      }
                    }
                  }
                }
                catch (Exception localException2)
                {
                  localException2.printStackTrace();
                }
              }
            }
          }
        }
      }
      label1087: return Boolean.valueOf(false);
    }
    catch (Exception localException1)
    {
      Log.i("test_upgrade", "exception ：");
      localException1.printStackTrace();
      Boolean localBoolean1 = Boolean.valueOf(false);
      Object localObject2 = localBoolean1;
      return localObject2;
    }
    finally
    {
      if (localAndroidHttpClient != null)
        localAndroidHttpClient.close();
    }
    throw localObject1;
  }

  protected void onPostExecute(Boolean paramBoolean)
  {
    Log.i("test_upgrade", "onPostExecute : ");
    if (!paramBoolean.booleanValue())
    {
      retry();
      return;
    }
    this.mCallback.onSuccess();
  }

  protected void onPreExecute()
  {
    Log.i("test_upgrade", "onPreExecute");
  }

  protected void onProgressUpdate(Integer[] paramArrayOfInteger)
  {
    Log.i("test_upgrade", "onProgressUpdate : " + paramArrayOfInteger[0].intValue());
    this.mCallback.onProgressUpdate(paramArrayOfInteger[0].intValue());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.SelfUpgradeTask
 * JD-Core Version:    0.6.0
 */